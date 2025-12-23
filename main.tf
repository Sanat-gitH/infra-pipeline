resource "azurerm_resource_group" "abcd" {
  name     = "rg-sanat"
  location = "West Europe"
}

resource "azurerm_resource_group" "abc" {
  name     = "rg-eam-123"
  location = "West Europe"
}