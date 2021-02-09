// Output the ID of the new SLB created
output "this_slb_id" {
  description = "The ID of the load balancer."
  value       = alicloud_slb.this.id
}

output "this_slb_address" {
  description = "The IP address of the load balancer."
  value       = alicloud_slb.this.address
}
