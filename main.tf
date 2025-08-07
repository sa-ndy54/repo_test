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

resource "azurerm_resource_group" "FirstRG" {
  name     = "SJ_08"
  location = "Central India"
}