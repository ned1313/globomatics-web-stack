stack {
  name        = "vm"
  description = "vm"
  id          = "db5805f2-7429-4cad-bf99-d611872c6c5b"

  tags = [
    "vm",
    "azure",
    "azurerm-backend",
  ]

  after = [
    "tag:network",
  ]
}


globals {
  stack_input_variables = {
    vm_sku_size = "Standard_B2s"
    vm_zone     = "1"
  }
}

generate_hcl "stack.auto.tfvars" {
  content {
    vm_sku_size = global.stack_input_variables.vm_sku_size
    vm_zone     = global.stack_input_variables.vm_zone
  }
}

input "vm_subnet_id" {
  backend       = "terraform"
  value         = outputs.vm_subnet_id.value
  mock          = "/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/virtualNetworks/virtualNetworksValue/subnets/subnetValue"
  from_stack_id = "d6013905-12dc-4d71-9e7d-5ca4766928a2"
}