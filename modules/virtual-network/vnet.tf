resource "azurerm_virtual_network" "vnet" {
  address_space       = var.vnet-address-space
  location            = var.location
  name                = var.vnet-name
  resource_group_name = var.resource_group_name
}