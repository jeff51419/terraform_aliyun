// Output the ID of the new VPC created
output "this_route_table_id" {
  description = "The ID of the route table"
  value       = concat(alicloud_route_table.this.*.id, [""])[0]
}

