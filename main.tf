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
  subscription_id = "1d0448f9-bdd5-46c2-ba28-81f178bd3a72"
  client_id       = "e8b7d642-91b1-4554-b0b6-bf878b5045a3"
  client_secret   = "2H.tTereYBSIn.vbNEViTOkQImY1x_Jx3o"
  tenant_id       = "1d790f78-cb86-4b48-89fc-3d03182efbe9"
}

resource "azurerm_resource_group" "rg1" {
    name = "terraform-rg"
    location = "southeastasia"
}

output "resourcegroup" {
    value = "${azurerm_resource_group.rg1.name}"
}
