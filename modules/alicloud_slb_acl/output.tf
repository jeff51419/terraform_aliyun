// Output the ID of the new VPC created
output "this_slb_acl_id" {
  description = "The Id of the access control list"
  value       = alicloud_slb_acl.this.id
}

