resource "azurerm_subnet" "app_sub" {
  name                 = "app_Sub"
  resource_group_name  = azurerm_resource_group.flip_network_rg.name
  virtual_network_name = azurerm_virtual_network.flip_vn.name
  address_prefixes     = ["172.16.2.0/29"]

}