locals {
  name = "${var.prefix}-db-${var.suffix}"
}

resource "azurerm_resource_group" "main" {
  name     = local.name
  location = var.location
}

resource "random_integer" "postgres" {
  min = 1000
  max = 9999
}

resource "azurerm_postgresql_server" "postgres" {
  name                = "${var.prefix}-postgres-${random_integer.postgres.result}"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name

  sku_name = "GP_Gen5_2"

  storage_mb            = 5120
  backup_retention_days = 7


  administrator_login          = "psqladmin"
  administrator_login_password = "H@Sh1CoR3!"
  version                      = "9.5"
  ssl_enforcement_enabled      = true

  tags = var.tags
}