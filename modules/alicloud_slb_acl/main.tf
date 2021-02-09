############################ alicloud_slb_acl ########################################################
# An access control list contains multiple IP addresses or CIDR blocks. 
# Server Load Balancer allows you to configure access control for listeners. 
# You can configure different whitelists or blacklists for different listeners. 
# You can configure access control when you create a listener or change access control configuration after a listener is created.


resource "alicloud_slb_acl" "default" {
  name       = var.name
  ip_version = var.ip_version
  entry_list {
    entry   = var.entry
  }
}