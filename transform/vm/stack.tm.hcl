stack {
  name        = "vm"
  description = "vm"
  id          = "58390d80-9f55-4455-a126-3d7d090a6db9"

  tags = [
    "compute",
    "azure",
    "azurerm-backend",
  ]

  after = [
    "tag:network",
  ]
}

globals {
  stack_values = {
    vm_sku_size = "Standard_B2s"
    vm_zone     = "1"
  }
}

generate_hcl "stack.auto.tfvars" {
  content {
    vm_sku_size = global.stack_values.vm_sku_size
    vm_zone     = global.stack_values.vm_zone
  }
}

input "vm_subnet_id" {
  backend       = "terraform"
  value         = outputs.vm_subnet_id.value
  from_stack_id = "f4d4fd68-9833-4b7a-9a10-112e6b9728c3"
  mock          = "/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/virtualNetworks/virtualNetworksValue/subnets/subnetValue"
}