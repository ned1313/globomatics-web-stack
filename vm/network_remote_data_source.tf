// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

data "terraform_remote_state" "network" {
  backend = "azurerm"
  config = {
    container_name       = "tfstate"
    key                  = "9c4f6727-f7ee-445c-812a-1c252b16c84b.network.terraform.tfstate"
    resource_group_name  = "rg-397ml9"
    storage_account_name = "terramate397ml9"
  }
}
