variable "sa" {
  type = object({
    name                     = string
    rg_key                   = string
    rg_name                  = string
    location                 = string
    account_tier             = optional(string, "Standard")
    account_replication_type = optional(string, "LRS")
    account_kind             = optional(string, "StorageV2")
    access_tier              = optional(string, "Hot")
    min_tls_version          = optional(string, "TLS1_2")
    allow_blob_public_access = optional(bool, false)
    tags                     = optional(map(string), {})
  })
}