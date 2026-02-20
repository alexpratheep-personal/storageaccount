output "resource_groups" {
  description = "RG outputs by key"
  value = {
    for k, m in module.resource_groups : k => {
      id       = m.id
      name     = m.name
      location = m.location
    }
  }
}

output "storage_accounts" {
  description = "Storage Account outputs by key"
  value = {
    for k, m in module.storage_accounts : k => {
      id   = m.id
      name = m.name
    }
  }
}