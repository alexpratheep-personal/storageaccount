resource "azurerm_storage_account" "sgt" {
  name                     = var.sa.name
  resource_group_name      = var.sa.resource_group_name
  location                 = var.sa.location
  account_tier             = var.sa.account_tier
  account_replication_type = var.sa.account_replication_type

  tags = var.sa.tags
}
