variable "storage_accounts" {
  type = map(object({
    name                     = string
    rg_key                   = string
    account_tier             = string
    account_replication_type = string
    tags                     = optional(map(string), {})
  }))
}
