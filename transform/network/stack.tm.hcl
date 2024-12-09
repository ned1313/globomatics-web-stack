stack {
  name        = "network"
  description = "network"
  id          = "f4d4fd68-9833-4b7a-9a10-112e6b9728c3"

  tags = [
    "network",
    "azure",
    "azurerm-backend",
  ]
}

globals {
  stack_values = {
    cidr_range = "10.0.0.0/16"
    subnets = {
      subnet1 = [
        "10.0.0.0/24",
      ]
      subnet2 = [
        "10.0.1.0/24",
      ]
    }
  }
}

generate_hcl "stack.auto.tfvars" {
  content {
    cidr_range = global.stack_values.cidr_range
    subnets    = global.stack_values.subnets
  }
}

output "vm_subnet_id" {
  backend   = "terraform"
  value     = azurerm_subnet.main["subnet1"].id
  sensitive = false
}
