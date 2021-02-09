// Output the ID of the new VPC created
output "this_vpc_id" {
  description = "The ID of the VPC"
  value       = concat(alicloud_vpc.this.*.id, [""])[0]
  // value       = alicloud_vpc.this[*].id
}

output "this_vpc_router_id" {
  description = "The ID of the router created by default on VPC creation."
  value       = concat(alicloud_vpc.this.*.router_id, [""])[0]
}

output "this_vpc_route_table_id" {
  description = "The route table ID of the router created by default on VPC creation."
  value       = concat(alicloud_vpc.this.*.route_table_id, [""])[0]
}