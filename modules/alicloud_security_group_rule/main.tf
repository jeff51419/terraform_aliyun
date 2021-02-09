############################ alicloud_network_settings ########################################################
# Provides a security group rule resource. Represents a single ingress or egress group rule, 
# which can be added to external Security Groups.
resource "alicloud_security_group_rule" "this" {
  type              = var.type
  ip_protocol       = var.ip_protocol
  nic_type          = var.nic_type
  policy            = var.policy
  port_range        = var.port_range
  priority          = var.priority
  security_group_id = var.security_group_id
  cidr_ip           = var.cidr_ip
}