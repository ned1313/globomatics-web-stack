stack {
  name        = "network"
  description = "network"
  id          = "9c4f6727-f7ee-445c-812a-1c252b16c84b"

  tags = [
    "network",
    "azure",
    "azurerm-backend",
  ]
}

generate_hcl "terraform.tfvars" {
  content {
    cidr_range = "10.0.0.0/16"
    subnets = {
      "subnet1" = ["10.0.0.0/24"]
      "subnet2" = ["10.0.1.0/24"]
    }
  }
}

output "vm_subnet_id" {
  backend = "terraform"
  value   = azurerm_subnet.main["subnet1"].id
}
