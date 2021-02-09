############################ alicloud_route_table ########################################################
# Provides a route table resource to add customized route tables.
# NOTE: Terraform will auto build route table instance while it uses alicloud_route_table to build a route table resource.
# Currently, customized route tables are available in most regions apart from 
# China (Beijing), China (Hangzhou), and China (Shenzhen) regions.

resource "alicloud_route_table" "this" {
  vpc_id      = var.vpc_id
  name        = var.name
  description = var.description
  tags        = var.tags
}