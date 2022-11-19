resource "azurerm_resource_group" "resource" {
  name     = var.ss_rg.name
  location = var.ss_rg.location
}

resource "azurerm_virtual_network" "virtualnetwork" {
  name                = var.hyd_vnet.name
  address_space       = [var.hyd_vnet.address_space]
  location            = azurerm_resource_group.resource.location
  resource_group_name = azurerm_resource_group.resource.name
}

resource "azurerm_subnet" "sb1" {
  count = length(var.sub.name)
  name                 = var.sub.name[count.index]
  resource_group_name  = azurerm_resource_group.resource.name
  virtual_network_name = azurerm_virtual_network.virtualnetwork.name
  address_prefixes     = [var.sub.address_prefixes[count.index]]
}
