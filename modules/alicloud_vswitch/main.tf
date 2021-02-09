############################ Provides a VPC switch resource ########################################################

resource "alicloud_vswitch" "this" {
  vpc_id            = var.vpc_id
  cidr_block        = var.cidr_block
  availability_zone = var.availability_zone
  name              = var.name
  description       = var.description
}