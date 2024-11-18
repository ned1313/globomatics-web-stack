provider "azurerm" {
  features {}
  storage_use_azuread = true
}

module "network" {
  source = "./network"

  prefix     = var.network_prefix
  suffix     = var.network_suffix
  location   = var.location
  cidr_range = var.cidr_range
  subnets    = var.subnets
  tags = merge(var.tags,
    {
      "module" = "network"
  })

}

module "compute" {
  source = "./vm"

  prefix   = var.compute_prefix
  suffix   = var.compute_suffix
  location = var.location
  tags = merge(var.tags,
    {
      "module" = "compute"
  })
  vm_sku_size  = var.vm_sku_size
  vm_zone      = var.vm_zone
  vm_subnet_id = module.network.subnet_map["compute"].id
}

module "db" {
  source = "./database"

  prefix   = var.db_prefix
  suffix   = var.db_suffix
  location = var.location
  tags = merge(var.tags,
    {
      "module" = "db"
  })

}