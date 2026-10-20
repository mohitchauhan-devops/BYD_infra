module "resource_group" {
  source = "../../module/azurerm_resource_group"
  resource_group_name = "my-resource-group"
  location = "East US"
}

module "storage_account" {
  depends_on = [ module.resource_group ]
  source = "../../module/azurerm_storage_account"
  storage_account_name = "mystorageaccount15900"
  resource_group_name = "my-resource-group"
  location = "East US"
  account_tier = "Standard"
  account_replication_type = "LRS"
}

module "vnet" {
  depends_on = [ module.resource_group ]
  source = "../../module/azurerm_vnet"
  vnet_name = "my-virtual-network"
  resource_group_name = "my-resource-group"
  location = "East US"
  address_space = ["10.0.0.0/16"]
}

module "subnet" {
  depends_on = [ module.vnet ]
  source = "../../module/azurerm_subnet"
  subnet_name = "my-subnet"
  resource_group_name = "my-resource-group"
  vnet_name = "my-virtual-network"
  address_prefixes = ["10.0.1.0/24"]
}

module "public_ip" {
  depends_on = [ module.resource_group ]
  source = "../../module/azurerm_public_ip"
  pip_name = "my-public-ip"
  location = "East US"
  resource_group_name = "my-resource-group"
  allocation_method = "Static"
}