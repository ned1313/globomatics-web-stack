output "resource_group_name" {
  value = azurerm_resource_group.main.name
}

output "vm_id" {
  value = module.testvm.resource_id
}

output "vm_resource" {
  value     = module.testvm.resource
  sensitive = true
}