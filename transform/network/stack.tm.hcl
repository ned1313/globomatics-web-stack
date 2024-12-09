stack {
  name        = "network"
  description = "network"
  id          = "d6013905-12dc-4d71-9e7d-5ca4766928a2"
}

globals {
  stack_input_variables = {
    cidr_range = "10.0.0.0/16"
    subnets    = {
      subnet1 = ["10.0.0.0/24"]
      subnet2 = ["10.0.1.0/24"]
    }
  }
}

generate_hcl "stack.auto.tfvars" {
  content {
    cidr_range = globals.stack_input_variables.cidr_range
    subnets    = globals.stack_input_variables.subnets
  }
}

output "vm_subnet_id" {
  backend = "terraform"
  value = azurerm_subnet.main["subnet1"].id
  sensitive = false
}