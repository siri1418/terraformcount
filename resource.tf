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
resource "azurerm_subnet" "sub1" {
  name                 = var.sub.name[0]
  resource_group_name  = azurerm_resource_group.resource.name
  virtual_network_name = azurerm_virtual_network.virtualnetwork.name
  address_prefixes     = [var.sub.address_prefixes[0]]
}
resource "azurerm_subnet" "sub2" {
  name                 = var.sub.name[1]
  resource_group_name  = azurerm_resource_group.resource.name
  virtual_network_name = azurerm_virtual_network.virtualnetwork.name
  address_prefixes     = [var.sub.address_prefixes[1]]
}
resource "azurerm_subnet" "sub3" {
  name                 = var.sub.name[2]
  resource_group_name  = azurerm_resource_group.resource.name
  virtual_network_name = azurerm_virtual_network.virtualnetwork.name
  address_prefixes     = [var.sub.address_prefixes[2]]
}
resource "azurerm_subnet" "sub4" {
  name                 = var.sub.name[3]
  resource_group_name  = azurerm_resource_group.resource.name
  virtual_network_name = azurerm_virtual_network.virtualnetwork.name
  address_prefixes     = [var.sub.address_prefixes[3]]
}