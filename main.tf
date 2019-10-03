provider "azurerm" {
  subscription_id = "${params.AZURE_SUBSCRIPTION_ID}"
  tenant_id       = "${params.AZURE_TENANT_ID}"
  client_id       =  "${params.AZURE_CLIENT_ID}"
  client_secret   =  "${params.AZURE_CLIENT_SECRET}"
  //version = "=1.34.0"
  
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

  source_uri          = "/subscriptions/a8a59231-c575-45fb-8e16-2b4c5b6a2271/resourceGroups/PWC-TEST/providers/Microsoft.Compute/disks/TestVM_OsDisk_1_a0fbabfad6844dc8aa5865813b05b554"

}
