// Output the ID of the new Router interface created
output "this_router_interface_id" {
  description = "The ID of the Router interface"
  value       = concat(alicloud_router_interface.this.*.id, [""])[0]
}

output "this_router_id" {
  description = "The ID of the Router ID"
  value       = concat(alicloud_router_interface.this.*.router_id, [""])[0]
}

output "this_router_type" {
  description = "The type of the Router"
  value       = concat(alicloud_router_interface.this.*.router_type, [""])[0]
}

output "this_specification" {
  description = "Router nterface specification."
  value       = concat(alicloud_router_interface.this.*.specification, [""])[0]
}

output "this_role" {
  description = "Router interface role."
  value       = concat(alicloud_router_interface.this.*.role, [""])[0]
}

output "this_opposite_router_type" {
  description = "Peer router type"
  value       = concat(alicloud_router_interface.this.*.opposite_router_type, [""])[0]
}