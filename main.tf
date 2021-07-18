terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
}

provider "azurerm" {
    features {}
}

resource "azurerm_resource_group" "rg1" {
    name = "terraform-rg"
    location = "ap-southeast-1"
}

output "resourcegroup" {
    value = "${azurerm_resource_group.rg1.name}"
}

