// Output the ID of the new nat gateway created
output "this_network_interface_id" {
  description = "The ENI ID."
  value       = concat(alicloud_network_interface.this.*.id, [""])[0]
}

output "this_network_interface_mac" {
  description = "The MAC address of an ENI"
  value       = concat(alicloud_network_interface.this.*.mac, [""])[0]
}
