terraform {
  required_version = ">=1.0.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "claudiu-terraform"
    storage_account_name = "claudiutfstate"
    container_name       = "claudiustatefiles"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}

