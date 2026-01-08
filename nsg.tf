resource "azurerm_network_security_group" "app_nsg" {
  name                = "app_nsg"
  location            = azurerm_resource_group.flip_network_rg.location
  resource_group_name = azurerm_resource_group.flip_network_rg.name
  tags = {
    Environment = "Prod"
  }

  security_rule {
    name                       = "Allow_HTTP"
    priority                   = 800
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "80"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  security_rule {
    name                       = "Allow_HTTPS"
    priority                   =  900
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "443"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}