resource "azurerm_resource_group" "rg" {
  location = var.location
  name     = "claudiu-rg"
}

module "vnet1" {
  source = "../../modules/virtual-network"


  address_space = var.address_space
  location = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}