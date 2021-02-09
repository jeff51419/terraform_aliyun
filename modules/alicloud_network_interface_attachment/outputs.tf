// Output the ID of the new nat gateway created
output "this_network_interface_attachment_id" {
  description = "The ID of the resource, formatted as <network_interface_id>:<instance_id>"
  value       = alicloud_network_interface_attachment.this.id
}

