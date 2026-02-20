resource "azurerm_storage_account" "this" {
  name                = var.sa.name
  resource_group_name = var.sa.rg_name
  location            = var.sa.location

  account_tier             = var.sa.account_tier
  account_replication_type = var.sa.account_replication_type
  account_kind             = var.sa.account_kind
  access_tier              = var.sa.access_tier
  min_tls_version          = var.sa.min_tls_version

 # allow_blob_public_access = var.sa.allow_blob_public_access

  tags = try(var.sa.tags, {})
}