// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "azurerm" {
    container_name       = "tfstate"
    key                  = "a0a8532d-2e07-4d5d-9eb8-ab11f2d49988.database.tfstate"
    resource_group_name  = "rg-gp6tsw"
    storage_account_name = "terramategp6tsw"
    use_azuread_auth     = true
  }
}
