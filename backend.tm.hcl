generate_hcl "backend.tf" {
  content {
    backend "azurerm" {
      container_name       = global.terraform.backend.container_name
      key                  = "${terramate.stack.id}.${terramate.stack.name}.tfstate"
      resource_group_name  = global.terraform.backend.resource_group_name
      storage_account_name = global.terraform.backend.storage_account_name
      storage_use_azuread  = true
    }
  }

  condition = tm_contains(terramate.stack.tags, "azurerm-backend")
}