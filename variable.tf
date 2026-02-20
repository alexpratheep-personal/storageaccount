variable "resource_groups" {
  description = "Map of resource groups"
  type = map(object({
    name     = string
    location = string
    tags     = optional(map(string), {})
  }))
}

variable "storage_accounts" {
  description = "Map of storage accounts. rg_key must match a key in var.resource_groups"
  type = map(object({
    name                     = string
    rg_key                   = string
    account_tier             = optional(string, "Standard")
    account_replication_type = optional(string, "LRS")
    account_kind             = optional(string, "StorageV2")
    access_tier              = optional(string, "Hot")
    min_tls_version          = optional(string, "TLS1_2")
    allow_blob_public_access = optional(bool, false)
    tags                     = optional(map(string), {})
  }))
}