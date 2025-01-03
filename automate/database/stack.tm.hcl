stack {
  name        = "database"
  description = "database"
  id          = "a0a8532d-2e07-4d5d-9eb8-ab11f2d49999"

  tags = [
    "database",
    "azure",
    "azurerm-backend",
  ]

  after = [
    "tag:network",
  ]
}
