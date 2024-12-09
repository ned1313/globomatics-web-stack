// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "azurerm" {
    container_name       = globals.azurerm_backend.container_name
    key                  = "db5805f2-7429-4cad-bf99-d611872c6c5b.vm.tfstate"
    resource_group_name  = globals.azurerm_backend.resource_group_name
    storage_account_name = globals.azurerm_backend.storage_account_name
    use_azuread_auth     = true
  }
}
