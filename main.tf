provider "azurerm" {
  subscription_id ="a8a59231-c575-45fb-8e16-2b4c5b6a2271"
  tenant_id       = "513294a0-3e20-41b2-a970-6d30bf1546fa"
  client_id       =  "ef2dde24-7a75-4716-9ccf-54f1e647d057"
  client_secret   =  "r]LWDKGPqJ84.TfGmD/rC_nu0nn0y20n"
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
