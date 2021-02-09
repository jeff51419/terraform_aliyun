############################ alicloud_slb_server_group ########################################################
# A virtual server group contains several ECS instances. 
# The virtual server group can help you to define multiple listening dimension, 
# and to meet the personalized requirements of domain name and URL forwarding.

resource "alicloud_slb_server_group" "this" {
  load_balancer_id = var.load_balancer_id
  name             = var.name
  servers {
    server_ids = var.server_ids
    port       = var.port
    weight     = var.weight
    type       = var.type
  }
}