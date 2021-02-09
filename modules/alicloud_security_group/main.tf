############################ alicloud_security_group ########################################################

# Create a new sg for a VPC
resource "alicloud_security_group" "this" {
  name   = var.security_group_name
  vpc_id = var.vpc_id
  description = var.description
  resource_group_id = var.resource_group_id
  tags        = var.tags 
}