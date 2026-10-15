variable "subnet_name" {
  description = "The name of the subnet."
  type        = string
  
}
variable "resource_group_name" {
  description = "The name of the resource group in which the subnet will be created."
  type        = string
}
variable "vnet_name" {
  description = "The name of the virtual network in which the subnet will be created."
  type        = string
}
variable "address_prefixes" {
  description = "The address prefixes of the subnet."
  type        = list(string)
}