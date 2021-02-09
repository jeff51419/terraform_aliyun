# Create a new Domain record
resource "alicloud_dns_record" "this" {
  host_record = var.host_record
  name        = var.name
  priority    = var.priority
  routing     = var.routing
  ttl         = var.ttl
  type        = var.type
  value       = var.value
}