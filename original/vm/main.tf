locals {
  name = "${var.prefix}-vm-${var.suffix}"
}

resource "azurerm_resource_group" "main" {
  name     = local.name
  location = var.location

  tags = var.tags
}

module "testvm" {
  source  = "Azure/avm-res-compute-virtualmachine/azurerm"
  version = "0.16.0"

  admin_username                     = "azureuser"
  disable_password_authentication    = false
  enable_telemetry                   = true
  encryption_at_host_enabled         = false
  generate_admin_password_or_ssh_key = true
  location                           = azurerm_resource_group.main.location
  name                               = local.name
  resource_group_name                = azurerm_resource_group.main.name
  os_type                            = "Linux"
  sku_size                           = var.vm_sku_size
  zone                               = var.vm_zone


  network_interfaces = {
    network_interface_1 = {
      name = "${local.name}-nic1"
      ip_configurations = {
        ip_configuration_1 = {
          name                          = "${local.name}-ipconfig1"
          private_ip_subnet_resource_id = var.vm_subnet_id
        }
      }
    }
  }

  os_disk = {
    caching              = "ReadWrite"
    storage_account_type = "Premium_LRS"
  }

  source_image_reference = {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-focal"
    sku       = "20_04-lts-gen2"
    version   = "latest"
  }

  tags = var.tags

}