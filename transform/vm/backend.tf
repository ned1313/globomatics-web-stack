// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "azurerm" {
    container_name       = "tfstate"
    key                  = "db5805f2-7429-4cad-bf99-d611872c6c5b.vm.tfstate"
    resource_group_name  = "rg-397ml9"
    storage_account_name = "terramate397ml9"
    use_azuread_auth     = true
  }
}
