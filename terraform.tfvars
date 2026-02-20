# resource_groups = {
#   rg1 = {
#     name     = "rg-demo-01"
#     location = "eastus"
#     tags = {
#       env = "dev"
#     }
#   }
#   rg2 = {
#     name     = "rg-demo-02"
#     location = "eastus2"
#   }
# }

# storage_accounts = {
#   sa1 = {
#     name                     = "stdevdemo01abc" # must be globally unique, 3-24 lowercase letters/numbers
#     rg_key                   = "rg1"
#     account_replication_type = "LRS"
#     tags = {
#       app = "billing"
#     }
#   }

#   sa2 = {
#     name                     = "stdevdemo02abc"
#     rg_key                   = "rg2"
#     account_replication_type = "GRS"
#   }
# }