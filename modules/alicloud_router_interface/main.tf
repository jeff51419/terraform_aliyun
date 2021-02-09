############################ alicloud_router_interface ########################################################
# Provides a VPC router interface resource aim to build a connection between two VPCs.
# NOTE: Only one pair of connected router interfaces can exist between two routers. 
# Up to 5 router interfaces can be created for each router and each account.
# NOTE: The router interface is not connected when it is created. 
# It can be connected by means of resource alicloud_router_interface_connection.

resource "alicloud_router_interface" "this" {
  opposite_region = var.opposite_region
  router_type     = var.router_type
  router_id       = var.router_id
  role            = var.role
  specification   = var.specification
}