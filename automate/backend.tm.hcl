globals {
  azurerm_backend = {
    resource_group_name  = "rg-gp6tsw"
    storage_account_name = "terramategp6tsw"
    container_name       = "tfstate"
    use_azuread_auth     = true
  }
}

generate_hcl "backend.tf" {
  content {
    terraform {
      backend "azurerm" {
        resource_group_name  = global.azurerm_backend.resource_group_name
        storage_account_name = global.azurerm_backend.storage_account_name
        container_name       = global.azurerm_backend.container_name
        use_azuread_auth     = global.azurerm_backend.use_azuread_auth
        key                  = "${terramate.stack.id}.${terramate.stack.name}.tfstate"
      }
    }
  }
}