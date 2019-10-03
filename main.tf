provider "azurerm" {
  subscription_id = "${var.AZURE_SUBSCRIPTION_ID}"
  tenant_id       = "${var.AZURE_TENANT_ID}"
  client_id       =  "${var.AZURE_CLIENT_ID}"
  client_secret   =  "${var.AZURE_CLIENT_SECRET}" 
}

resource "azurerm_resource_group" "pwc-test" {

 name     = "pwc-test"

 location = "eastus"

}

 

resource "azurerm_snapshot" "pwc-test" {

  name                = "pwc-snapshot_name"

  location            = "eastus"

  resource_group_name = "pwc-test"

  create_option       = "Copy"

  source_uri          = "/subscriptions/a8a59231-c575-45fb-8e16-2b4c5b6a2271/resourceGroups/PWC-TEST/providers/Microsoft.Compute/disks/test_OsDisk_1_c682ef01a39f4f4089ce77e4ebc85fc5"

}
