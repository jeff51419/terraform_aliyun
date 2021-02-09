// Output the ID of the new VPC created
output "this_slb_listener_id" {
  description = "The ID of the load balancer listener"
  value       = concat(alicloud_slb_listener.this.*.id, [""])[0]
}

output "this_slb_listener_load_balancer_id" {
  description = "The Load Balancer ID which is used to launch a new listener."
  value       = concat(alicloud_slb_listener.this.*.load_balancer_id, [""])[0]
}
