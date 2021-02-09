// Provides a key pair resource.
output "this_key_name" {
  description = "The name of the key pair"
  value       = alicloud_key_pair.this.key_name
}

output "this_finger_print" {
  description = "The finger print of the key pair"
  value       = alicloud_key_pair.this.finger_print
}