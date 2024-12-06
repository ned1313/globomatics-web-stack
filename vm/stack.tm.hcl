stack {
  name        = "vm"
  description = "vm"
  id          = "4e5d740e-baf7-4f46-96e4-46d5d7df449a"

  tags = [
    "vm",
    "azure",
    "compute",
    "azurerm-backend",
  ]

  after = [
    "tag:network",
  ]
}

generate_hcl "terraform.tfvars" {
  content {
    vm_sku_size = "Standard_B1s"
    vm_zone     = "1"
  }
}

generate_hcl "network_remote_data_source.tf" {
  content {
    data "terraform_remote_state" "network" {
      backend = "azurerm"
      config = {
        resource_group_name  = global.terraform.backend.resource_group_name
        storage_account_name = global.terraform.backend.storage_account_name
        container_name       = global.terraform.backend.container_name
        key                  = "${global.terraform.stack.values.network_stack.id}.${global.terraform.stack.values.network_stack.name}.terraform.tfstate"
      }
    }
  }
}