resource_groups = {
  rg1 = {
    name     = "rg-storage-dev-01"
    location = "eastus"
    tags = {
      env = "dev"
      owner = "alex"
    }
  }
}
storage_accounts = {
  sa1 = {
    name                     = "st01"
    resource_group_name      = "rg-storage-dev-01"
    location                 = "eastus"
    account_tier             = "Standard"
    account_replication_type = "LRS"
    tags                     = { env = "dev" }
  }

  sa2 = {
    name                     = "st02"
    resource_group_name      = "rg-storage-01"
    location                 = "centralindia"
    account_tier             = "Standard"
    account_replication_type = "ZRS"
    tags                     = { env = "dev" }
  }
}
