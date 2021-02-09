// Output the ID of the new slb server group created
output "this_slb_server_group_id" {
  description = "The ID of the virtual server group."
  value       = alicloud_slb_server_group.this.id
}

output "this_slb_server_group_load_balancer_id" {
  description = "The Load Balancer ID which is used to launch a new virtual server group"
  value       = alicloud_slb_server_group.this.load_balancer_id
}

output "this_slb_server_group_name" {
  description = "The name of the virtual server group"
  value       = alicloud_slb_server_group.this.name
}

output "this_slb_server_group_servers" {
  description = "A list of ECS instances that have be added."
  value       = alicloud_slb_server_group.this.servers
}
