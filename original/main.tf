provider "azurerm" {
  storage_use_azuread = true
  features {
  }
}

module "network" {
  source = "./network"

  prefix = var.prefix
    suffix = var.suffix
    location = var.location
    tags = var.tags
    cidr_range = var.cidr_range
    subnets = var.subnets
}

module "vm" {
  source = "./vm"

  prefix = var.prefix
    suffix = var.suffix
    location = var.location
    tags = var.tags
    vm_sku_size = var.vm_sku_size
    vm_zone = var.vm_zone
    vm_subnet_id = module.network.subnet_map["subnet1"].id
}

module "db" {
  source = "./database"

  prefix = var.prefix
    suffix = var.suffix
    location = var.location
    tags = var.tags
  
}