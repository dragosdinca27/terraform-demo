location           = "West Europe"
vnet-address-space = ["10.0.0.0/16"]
subnet-name        = "clau-subnet"
subnet-address     = ["10.0.1.0/24"]



security_rules = [
  {
    priority                   = 100
    name                       = "http"
    source_port_range          = "*"
    destination_port_range     = "80"
    source_address_prefix      = "10.0.0.0/24"
    destination_address_prefix = "*"

  },
  {
    priority                   = 200
    name                       = "my_service_outbound"
    access                     = "Allow"    # defaults to 'Allow'
    direction                  = "Outbound" # defaults to 'Inbound'
    protocol                   = "Tcp"      # defaults to 'Tcp'
    source_port_range          = "*"
    destination_port_range     = "443"
    source_address_prefixe     = "10.0.0.0/24"
    destination_address_prefix = "*"
  },
]