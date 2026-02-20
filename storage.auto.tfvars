resource_groups = {
  rg1 = {
    name     = "rg-storage-dev-01"
    location = "eastus"
    tags = { env = "dev" }
  }
}

storage_accounts = {
  sa1 = {
    name                     = "storagedev01abc123"   # must be globally unique
    rg_key                   = "rg1"
    account_tier             = "Standard"
    account_replication_type = "LRS"
    tags = { app = "demo" }
  }

  sa2 = {
    name                     = "storagedev02abc123"
    rg_key                   = "rg1"
    account_tier             = "Standard"
    account_replication_type = "GRS"
  }
}
