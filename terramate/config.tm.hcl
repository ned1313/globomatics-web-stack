globals "terraform" "backend" {
  resource_group_name  = "rg-397ml9"
  storage_account_name = "terramate397ml9"
  container_name       = "tfstate"
}

globals "terraform" "providers" "azurerm" {
  source   = "hashicorp/azurerm"
  version  = "~> 3.0"
  features = {}
}

globals "terraform" "stack" "values" {
  prefix   = "devtm"
  suffix   = "01"
  location = "eastus"
  tags = {
    "environment" = "dev"
    "project"     = "terramate"
  }
  network_stack = {
    name = "network"
    id   = "9c4f6727-f7ee-445c-812a-1c252b16c84b"
  }
}