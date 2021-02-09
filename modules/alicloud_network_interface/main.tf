############################ Provides a VPC switch resource ########################################################
resource "alicloud_network_interface" "this" {
  count             = var.number_of_network_interface
  name              = format("${var.name_prefix}%02s", count.index+1)
  vswitch_id        = var.vswitch_id
  security_groups   = var.security_groups
  description       = var.description
  private_ip        = var.private_ip
  private_ips_count = var.private_ips_count
  resource_group_id = var.resource_group_id
}