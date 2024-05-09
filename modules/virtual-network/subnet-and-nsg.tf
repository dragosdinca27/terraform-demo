resource "azurerm_subnet" "subnet" {
  address_prefixes     = var.subnet-address
  name                 = var.subnet-name
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
}

resource "azurerm_network_security_group" "networkSecurityGroup" {
  location            = var.location
  name                = "${azurerm_subnet.subnet.name}-nsg"
  resource_group_name = var.resource_group_name
}

resource "azurerm_network_security_rule" "networkRule" {
  for_each = { for index, v in var.security_rules : v.name => v }

  name                       = each.value.name
  priority                   = each.value.priority
  direction                  = coalesce(each.value.direction, "Inbound")
  access                     = coalesce(each.value.access, "Allow")
  protocol                   = coalesce(each.value.protocol, "Tcp")
  source_port_range          = each.value.source_port_range
  destination_port_range     = each.value.destination_port_range
  source_address_prefix      = each.value.source_address_prefix
  destination_address_prefix = each.value.destination_address_prefix

  resource_group_name         = var.resource_group_name
  network_security_group_name = azurerm_network_security_group.networkSecurityGroup.name
}

resource "azurerm_subnet_network_security_group_association" "subnet_nsg_association" {
  depends_on                = [azurerm_network_security_rule.networkRule]
  network_security_group_id = azurerm_network_security_group.networkSecurityGroup.id
  subnet_id                 = azurerm_subnet.subnet.id
}