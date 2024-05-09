resource "azurerm_resource_group" "rg" {
  location = var.location
  name     = "claudiu-rg"
}

module "vnet1" {
  source = "../../modules/virtual-network"

  location = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  vnet-address-space = var.vnet-address-space
  subnet-address     = var.subnet-address
  subnet-name        = var.subnet-name

}