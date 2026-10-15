variable "vnet_name" {
  description = "The name of the virtual network."
  type        = string          
  
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the virtual network."
  type        = string
}

variable "location" {
  description = "The Azure region in which to create the virtual network."
  type        = string
}

variable "address_space" {
  description = "The address space of the virtual network."
  type        = list(string)
}