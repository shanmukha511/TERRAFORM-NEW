variable "subscription_id" {}
variable "tenant_id" {}

variable "client_id" {}

variable "client_secret" {}

variable "os_disk" {
  description = "source_uri of VM_OS Disk"
  type        = list(string)
  default     = ["/subscriptions/a8a59231-c575-45fb-8e16-2b4c5b6a2271/resourceGroups/PWC-TEST/providers/Microsoft.Compute/disks/VM1_OsDisk_1_8e5b9f5a054a45dd954dcbb84192c1f2", "/subscriptions/a8a59231-c575-45fb-8e16-2b4c5b6a2271/resourceGroups/PWC-TEST/providers/Microsoft.Compute/disks/VM2_OsDisk_1_8c3ec2a7b0974f139cf0abc50365ef76"]
}
