# Add a new Domain.
resource "alicloud_dns" "this" {
  name               = var.name
  group_id           = var.group_id
  resource_group_id  = var.resource_group_id
}