resource "azurerm_resource_group" "this" {
  name     = var.rg.name
  location = var.rg.location
  tags     = try(var.rg.tags, {})
}