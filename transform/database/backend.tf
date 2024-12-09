// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "azurerm" {
    container_name       = "tfstate"
    key                  = "e4d1dd66-e2ba-43ab-80ab-e1fba1f75f52.database.tfstate"
    resource_group_name  = "rg-397ml9"
    storage_account_name = "terramate397ml9"
    use_azuread_auth     = true
  }
}
