globals {
  azurerm_backend = {
    resource_group_name  = "rg-397ml9"
    storage_account_name = "terramate397ml9"
    container_name       = "tfstate"
  }
}

generate_hcl "backend.tf" {
  content {
    terraform {
      backend "azurerm" {
        container_name       = globals.azurerm_backend.container_name
        key                  = "${terramate.stack.id}.${terramate.stack.name}.tfstate"
        resource_group_name  = globals.azurerm_backend.resource_group_name
        storage_account_name = globals.azurerm_backend.storage_account_name
        use_azuread_auth     = true
      }
    }
  }
}