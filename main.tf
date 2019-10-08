  provider "azurerm" {

 subscription_id = "${var.subscription_id}"
  tenant_id       = "${var.tenant_id}"
  client_id       =  "${var.client_id}"
  client_secret   =  "${var.client_secret}"
 
  
  }

resource "azurerm_resource_group" "pwc-test" {

 name     = "pwc-test"

 location = "eastus"

}

 

resource "azurerm_snapshot" "pwc-test" {

  name                = "pwc-snapshot_windows"

  location            = "eastus"

  resource_group_name = "pwc-test"

  create_option       = "Copy"

  source_uri          = "/subscriptions/a8a59231-c575-45fb-8e16-2b4c5b6a2271/resourceGroups/pwc-test/providers/Microsoft.Compute/disks/VM1_OsDisk_1_651ba120ce06443a8af1eaf52025d04e"

}



