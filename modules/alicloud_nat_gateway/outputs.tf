// Output the ID of the new nat gateway created
output "this_nat_gateway_id" {
  description = "The nat_gateway ID"
  value       = alicloud_nat_gateway.this.id
}

output "this_nat_gateway_name" {
  description = "The nat gateway name"
  value       = alicloud_nat_gateway.this.name
}

output "this_nat_gateway_description" {
  description = "The nat gateway description"
  value       = alicloud_nat_gateway.this.description
}

output "this_nat_gateway_vpc_id" {
  description = "The nat gateway vpc id"
  value       = alicloud_nat_gateway.this.vpc_id
}

output "this_nat_gateway_bandwidth_package_ids" {
  description = "The nat gateway bandwidth"
  value       = alicloud_nat_gateway.this.bandwidth_package_ids
}

output "this_nat_gateway_snat_table_ids" {
  description = "The nat gateway snat table"
  value       = alicloud_nat_gateway.this.snat_table_ids
}

output "this_nat_gateway_forward_table_ids" {
  description = "The nat gateway forward table"
  value       = alicloud_nat_gateway.this.forward_table_ids
}