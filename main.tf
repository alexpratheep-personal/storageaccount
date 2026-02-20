module "resource_groups" {
  source   = "./modules/resource_group"
  for_each = var.resource_groups

  rg = each.value
}

module "storage_accounts" {
  source   = "./modules/storage_account"
  for_each = var.storage_accounts
  sa       = each.value
}

