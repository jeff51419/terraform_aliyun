resource "alicloud_key_pair" "this" {
  key_name          = var.key_name
  key_name_prefix   = var.key_name_prefix
  public_key        = var.public_key
  key_file          = var.key_file
  resource_group_id = var.resource_group_id
}