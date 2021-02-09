// Output the ID of the new VPC and Security Group created
// "concat" takes two or more lists and combines them into a single list.
output "this_security_group_id" {
  description = "The ID of the security group"
  value       = concat(alicloud_security_group.this.*.id, [""])[0]
}

# output "this_security_group_vpc_id" {
#   description = "The VPC ID"
#   value       = var.vpc_id
# }

# output "this_security_group_name" {
#   description = "The name of the security group"
#   value       = concat(alicloud_security_group.this.*.name, [""])[0]
# }

# output "this_security_group_description" {
#   description = "The description of the security group"
#   value       = concat(alicloud_security_group.this.*.description, [""])[0]
# }