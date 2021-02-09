output "this_instance_id" {
  description = "The instance ID"
  value       = concat(alicloud_instance.this.*.id, [""])[0]
}

output "this_instance_status" {
  description = "The instance status"
  value       = concat(alicloud_instance.this.*.status, [""])[0]
}

output "this_instance_public_ip" {
  description = "The instance public ip"
  value       = concat(alicloud_instance.this.*.public_ip, [""])[0]
}

output "this_instances_id" {
  description = "The instances ID"
  value       = alicloud_instance.this.*.id
}