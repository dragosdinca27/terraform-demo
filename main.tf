terraform {
  required_providers {
    azurem = {
      source = "hashicorp/azurerm"
      version = ">=2.0"
    }
  }
  backend "azurerm" {
    
  }
}

provider "azurerm" {
  features {
    
  }
}