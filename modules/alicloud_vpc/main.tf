############################ alicloud_vpc ########################################################
# Provides a VPC resource.
# NOTE: Terraform will auto build a router and a route table while it uses alicloud_vpc to build a vpc resource.

// If there is not specifying vpc_id, the module will launch a new vpc
resource "alicloud_vpc" "this" {
  cidr_block            = var.cidr_block
  name                  = var.name
  description           = var.description
  resource_group_id     = var.resource_group_id
  tags                  = var.tags
  secondary_cidr_blocks = var.secondary_cidr_blocks
}