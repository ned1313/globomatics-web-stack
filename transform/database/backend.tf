// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "azurerm" {
    container_name       = globals.azurerm_backend.container_name
    key                  = "e4d1dd66-e2ba-43ab-80ab-e1fba1f75f52.database.tfstate"
    resource_group_name  = globals.azurerm_backend.resource_group_name
    storage_account_name = globals.azurerm_backend.storage_account_name
    use_azuread_auth     = true
  }
}
