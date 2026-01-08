resource "azurerm_virtual_network" "flip_vn" {
  name                = "flip_VN"
  address_space       = ["172.16.2.0/24"]
  location            = azurerm_resource_group.flip_network_rg.location
  resource_group_name = azurerm_resource_group.flip_network_rg.name
  tags = {
    Environment = "Prod"
  }
}