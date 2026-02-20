locals {
  # Map RG key -> RG name (from module outputs)
  rg_name_by_key = {
    for k, m in module.resource_groups : k => m.name
  }

  # Map RG key -> RG location (from module outputs)
  rg_location_by_key = {
    for k, m in module.resource_groups : k => m.location
  }

  # Enrich storage accounts with resolved RG name/location
  storage_accounts_resolved = {
    for sa_key, sa in var.storage_accounts : sa_key => merge(sa, {
      rg_name  = local.rg_name_by_key[sa.rg_key]
      location = local.rg_location_by_key[sa.rg_key]
    })
  }
}