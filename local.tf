locals {
  # enrich SA objects with RG name + location from RG module outputs
  storage_accounts_expanded = {
    for k, sa in var.storage_accounts : k => merge(sa, {
      resource_group_name = module.resource_groups[sa.rg_key].name
      location            = module.resource_groups[sa.rg_key].location
    })
  }
}