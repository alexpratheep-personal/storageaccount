output "rg_id" {
  description = "Resource Group resource ID"
  value       = azurerm_resource_group.rg.id
}

output "rg_name" {
  description = "Resource Group name"
  value       = azurerm_resource_group.rg.name
}

output "rg_location" {
  description = "Resource Group location"
  value       = azurerm_resource_group.rg.location
}