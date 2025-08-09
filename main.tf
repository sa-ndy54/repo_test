terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.38.1"
    }
  }
}

provider "azurerm" {
  subscription_id = "bcf304d8-21b8-4358-9c77-54b5dd26f938"
  features {
  }
}

resource "azurerm_resource_group" "sectest" {
  name     = "sj10"
  location = "West Europe"
}

resource "azurerm_storage_account" "sttest" {
  name                     = "sanju19"
  resource_group_name      = azurerm_resource_group.sectest.name
  location                 = azurerm_resource_group.sectest.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
}
