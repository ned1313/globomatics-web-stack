globals "terraform" "backend" {
  resource_group_name  = "rg-397ml9"
  storage_account_name = "terramate397ml9"
  container_name       = "tfstate"
}

globals "terraform" "providers" "azurerm" {
  source = "hashicorp/azurerm"
  version = "~> 3.0"
  features = {}
}

terramate {
  config {
    experiments = ["scripts","outputs-sharing"]
  }
}