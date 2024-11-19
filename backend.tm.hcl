generate_hcl "backend.tf" {
    content = {
        backend "azurerm" {
            container_name = globals.terraform.backend.container_name
            key = "${terramate.stack.id}.${terramate.stack.name}.tfstate"
            resource_group_name = globals.terraform.backend.resource_group_name
            storage_account_name = globals.terraform.backend.storage_account_name
            storage_use_azuread = true
        }
    }

    stack_filter {
       condition = tm_contains(terramate.stack.tags, "azurerm-backend")
    }
}