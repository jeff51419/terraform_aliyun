// Output the ID of the new vswitch created
output "this_vswitch_id" {
  description = "The vswitch ID"
  value       = alicloud_vswitch.this.id
}