variable "type" {
  type    = string
  default = "inbound"
  description = "The type of rule being created. Valid options are ingress (inbound) or egress (outbound)"
}

variable "ip_protocol" {
  type    = string
  default = "tcp"
  description = "The protocol. Can be tcp, udp, icmp, gre or all."
}

variable "nic_type" {
  type    = string
  default = "internet"
  description = "Network type, can be either internet or intranet, the default value is internet"
}

variable "policy" {
  type    = string
  default = "accept"
  description = "Authorization policy, can be either accept or drop, the default value is accept."
}

variable "port_range" {
  type    = string
  default = "-1/-1"
  description = "The range of port numbers relevant to the IP protocol. Default to -1/-1."
}

variable "priority" {
  type    = number
  default = "1"
  description = "Authorization policy priority, with parameter values: 1-100, default value: 1"
}

variable "cidr_ip" {
  type    = string
  default = "0.0.0.0/0"
  description = "The target IP address range. The default value is 0.0.0.0/0 (which means no restriction will be applied)Only IPv4 is supported."
}

variable "security_group_id" {
  type    = string
  default = null
  description = "(Required, ForceNew) The security group to apply this rule to."
}