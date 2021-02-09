############################ alicloud_slb ########################################################
# Provides an Application Load Balancer resource.
# NOTE: At present, to avoid some unnecessary regulation confusion, 
# SLB can not support alicloud international account to create "paybybandwidth" instance.
# NOTE: The supported specifications vary by region. Currently not all regions support guaranteed-performance instances

resource "alicloud_slb" "this" {
  name          = var.name
  specification = var.specification
  vswitch_id    = var.vswitch_id
}