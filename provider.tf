terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  client_id       = "8581ca28-6790-4e30-b862-6034d027aa12"
  client_secret   = "0Co8Q~nsk8YLdXdIMAF6vF2Nphu1CPkgmHW.nbfs"
  tenant_id       = "9729e73e-b2fc-4148-94e5-b6e7a0016dce"
  subscription_id = "8b0f87f9-f3b6-46fd-ad58-98654b93d97f"
}


