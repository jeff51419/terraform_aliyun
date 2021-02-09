// Provides a key pair resource.
output "this_key_name" {
  description = "The name of the key pair"
  value       = alicloud_key_pair_attachment.this.key_name
}

output "this_instance_ids" {
  description = "The list of ECS instance's IDs"
  value       = alicloud_key_pair_attachment.this.instance_ids
}