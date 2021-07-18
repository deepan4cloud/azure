provider "azurerm" {
    
}

resource "azurerm_resource_group" "rg1" {
    name = "terraform-rg"
    location = "ap-southeast-1"
}

output "resourcegroup" {
    value = "${azurerm_resource_group.rg1.name}"
}

