// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "azurerm" {
    container_name       = "tfstate"
    key                  = "a0a8532d-2e07-4d5d-9eb8-ab11f2d49999.database.tfstate"
    resource_group_name  = "rg-397ml9"
    storage_account_name = "terramate397ml9"
    use_azuread_auth     = true
  }
}
