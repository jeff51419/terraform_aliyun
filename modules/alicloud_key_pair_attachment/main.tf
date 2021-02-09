resource "alicloud_key_pair_attachment" "this" {
  key_name          = var.key_name
  instance_ids      = var.instance_ids
  force             = var.force
}