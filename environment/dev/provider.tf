terraform {
  backend "azurerm" {
    resource_group_name  = "rg_mohit"
    storage_account_name = "mystorageaccount193"
    container_name       = "mycont"
    key                  = "dev.terraform.tfstate"
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=5.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  subscription_id = "82725301-e172-4d2e-920e-a694092383e3"
}
