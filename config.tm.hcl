globals "terraform" "backend" {
  resource_group_name  = "rg-397ml9"
  storage_account_name = "terramate397ml9"
  container_name       = "tfstate"
}

terramate {
  config {
    experiments = ["scripts"]
  }
}