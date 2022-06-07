
locals {
  vpn_suffix = "nvo94t"
}

data "azurerm_subnet" "utility" {
  name                 = "snet-utility"
  virtual_network_name = "vnet-vpn-${local.vpn_suffix}"
  resource_group_name  = "rg-vpn-${local.vpn_suffix}"
}
