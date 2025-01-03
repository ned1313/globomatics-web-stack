provider "azurerm" {
  features {}
  storage_use_azuread = true
}

resource "random_string" "suffix" {
  length  = 6
  special = false
  upper   = false
}

resource "azurerm_resource_group" "rg" {
  name     = "rg-${random_string.suffix.result}"
  location = "East US"
}

resource "azurerm_storage_account" "sa" {
  name                       = "terramate${random_string.suffix.result}"
  resource_group_name        = azurerm_resource_group.rg.name
  location                   = azurerm_resource_group.rg.location
  account_tier               = "Standard"
  account_replication_type   = "LRS"
  shared_access_key_enabled  = false
  https_traffic_only_enabled = true
  min_tls_version            = "TLS1_2"

}

resource "azurerm_storage_container" "sc" {
  name                  = "tfstate"
  storage_account_id    = azurerm_storage_account.sa.id
  container_access_type = "private"
}

data "azurerm_client_config" "current" {}

resource "azurerm_role_assignment" "self_contributor" {
  scope                = azurerm_storage_account.sa.id
  role_definition_name = "Storage Blob Data Contributor"
  principal_id         = data.azurerm_client_config.current.object_id

}

resource "azurerm_role_assignment" "oidc_contributor" {
  scope                = azurerm_storage_account.sa.id
  role_definition_name = "Storage Blob Data Contributor"
  principal_id         = module.github_oidc.azuread_application.object_id

}

module "github_oidc" {
  source  = "ned1313/github_oidc/azuread"
  version = "2.0.0"

  entity_type        = "ref"
  identity_name      = "terramate"
  repository_name    = var.repository_name
  create_pr_identity = true
  ref_branches       = ["main"]
}

resource "github_actions_secret" "oidc" {
  for_each = {
    azure_client_id       = module.github_oidc.azuread_application.application_id
    azure_tenant_id       = module.github_oidc.azuread_application.tenant_id
    azure_subscription_id = data.azurerm_client_config.current.subscription_id
  }
  secret_name     = each.key
  plaintext_value = each.value
  repository      = var.repository_name
}