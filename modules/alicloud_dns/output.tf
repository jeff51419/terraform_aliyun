// Output the ID of the new dns created
output "this_dns_id" {
  description = "The value is set to domain_name"
  value       = alicloud_dns.this.id
}

output "this_dns_domain_id" {
  description = "The domain ID"
  value       = alicloud_dns.this.domain_id
}

output "this_dns_name" {
  description = "The domain name"
  value       = alicloud_dns.this.name
}

output "this_dns_dns_server" {
  description = "A list of the dns server name"
  value       = alicloud_dns.this.dns_server
}

output "this_dns_group_id" {
  description = "The group id of domain"
  value       = alicloud_dns.this.group_id
}