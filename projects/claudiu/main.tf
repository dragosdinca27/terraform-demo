terraform {
  required_version = ">=1.0.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">=3.0"
    }
  }

#   backend "azurerm" {
#     resource_group_name  = azurerm_resource_group.rg.name
#     storage_account_name = var.storage_account_name
#     container_name       = var.container_name
#     key                  = var.key
#   }
}

provider "azurerm" {

  features {}
}
