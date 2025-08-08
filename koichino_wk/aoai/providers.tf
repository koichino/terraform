terraform {
  required_providers {
    azapi = {
      source = "Azure/azapi"
      version = "~>2.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>4.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
  }
}


provider "azapi" {
  subscription_id = "44507848-c16e-4ccd-b18c-487609de3470"
}

provider "azurerm" {
  features {}
  subscription_id = "44507848-c16e-4ccd-b18c-487609de3470"
}