output "this_dns_record_id" {
  description = "The record id"
  value       = alicloud_dns_record.this.id
}

output "this_dns_record_name" {
  description = "The record domain name"
  value       = alicloud_dns_record.this.name
}

output "this_dns_record_type" {
  description = "The record type"
  value       = alicloud_dns_record.this.type
}

output "this_dns_record_host_record" {
  description = "The host record of record"
  value       = alicloud_dns_record.this.host_record
}

output "this_dns_record_status" {
  description = "The record status. Enable or Disable"
  value       = alicloud_dns_record.this.status
}

output "this_dns_record_locked" {
  description = "The record locked state. true or false"
  value       = alicloud_dns_record.this.locked
}
