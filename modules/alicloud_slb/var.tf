# VPC variables
variable "name" {
  description = "The name of the SLB. This name must be unique within your AliCloud account"
  type        = string
  default     = null
}

variable "address_type" {
  description = "The network type of the SLB instance. Valid values internet intranet."
  # If load balancer launched in VPC, this value must be "intranet".
  # internet: After an Internet SLB instance is created, 
  # the system allocates a public IP address so that the instance can forward requests from the Internet.

  # intranet: After an intranet SLB instance is created, 
  # the system allocates an intranet IP address so that the instance can only forward intranet requests.
  type        = string
  default     = null
}

variable "internet_charge_type" {
  description = "Valid values are PayByBandwidth, PayByTraffic. "
  # If this value is "PayByBandwidth", then argument "internet" must be "true"
  # If load balancer launched in VPC, this value must be "PayByTraffic"
  type        = string
  default     = "PayByTraffic"
}

variable "bandwidth" {
  description = "Valid value is between 1 and 1000"
  # If argument "internet_charge_type" is "paybytraffic", then this value will be ignore.
  type        = number
  default     = 1
}

variable "vswitch_id" {
  description = "The VSwitch ID to launch in. If address_type is internet, it will be ignore."
  type        = string
  default     = null
}

variable "specification" {
  description = "The specification of the Server Load Balancer instance."
  # Default to empty string indicating it is "Shared-Performance" instance. 
  # Launching "Performance-guaranteed" instance, it is must be specified
  # valid values are: "slb.s1.small", "slb.s2.small", "slb.s2.medium", "slb.s3.small", "slb.s3.medium", "slb.s3.large" and "slb.s4.large".
  type        = string
  default     = null
}

variable "tags" {
  description = "A mapping of tags to assign to the resource. The tags can have a maximum of 10 tag"
  type        = map(string)
  default     = {}
}

variable "instance_charge_type" {
  description = "The billing method of the load balancer."
  # Valid values are "PrePaid" and "PostPaid"
  type        = string
  default     = "PostPaid"
}

variable "address" {
  description = "Specify the IP address of the private network for the SLB"
  type        = string
  default     = null
}

variable "resource_group_id" {
  description = "The Id of resource group which the instance belongs."
  type        = string
  default     = null
}

variable "delete_protection" {
  description = "Whether enable the deletion protection or not. on"
  type        = bool
  default     = false
}

variable "master_zone_id" {
  description = "The primary zone ID of the SLB instance."
  type        = string
  default     = null
}

variable "slave_zone_id" {
  description = "The standby zone ID of the SLB instance"
  type        = string
  default     = null
}