// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "azurerm" {
    container_name       = globals.azurerm_backend.container_name
    key                  = "d6013905-12dc-4d71-9e7d-5ca4766928a2.network.tfstate"
    resource_group_name  = globals.azurerm_backend.resource_group_name
    storage_account_name = globals.azurerm_backend.storage_account_name
    use_azuread_auth     = true
  }
}
