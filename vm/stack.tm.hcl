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
