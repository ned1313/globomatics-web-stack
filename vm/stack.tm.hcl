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

input "vm_subnet_id" {
  backend       = "terraform"
  value         = outputs.vm_subnet_id.value
  mock          = "/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/virtualNetworks/virtualNetworksValue/subnets/subnetValue"
  from_stack_id = "9c4f6727-f7ee-445c-812a-1c252b16c84b"
}