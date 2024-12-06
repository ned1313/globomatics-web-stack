stack {
  name        = "database"
  description = "database"
  id          = "acb8c82c-2e98-4bd0-ab93-632a0b71d7ac"

  tags = [
    "database",
    "azure",
    "azurerm-backend",
  ]

  after = [
    "tag:network",
  ]
}
