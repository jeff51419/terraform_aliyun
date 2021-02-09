############################ Provides a VPC switch resource ########################################################

resource "alicloud_nat_gateway" "this" {
  vpc_id = var.vpc_id
  name   = var.name
}