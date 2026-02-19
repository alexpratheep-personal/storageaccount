module "storage_accounts" {
  source   = "./modules/storage_account"
  for_each = var.storage_accounts
  sa       = each.value
}