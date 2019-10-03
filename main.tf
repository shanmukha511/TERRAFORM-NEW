provider "azurerm" {
  subscription_id = $AZURE_SUBSCRIPTION_ID
  tenant_id       = $AZURE_TENANT_ID
  client_id       =  $AZURE_CLIENT_ID
  client_secret   =  $AZURE_CLIENT_SECRET 
  }


resource "azurerm_resource_group" "test" {
  name     = "snapshot-rg"
  location = "West Europe"
}

resource "azurerm_snapshot" "test" {
  name                = "snapshot"
  location            = "${azurerm_resource_group.test.location}"
  resource_group_name = "${azurerm_resource_group.test.name}"
  create_option       = "Copy"
  source_uri          = "${azurerm_managed_disk.test.id}"
}
