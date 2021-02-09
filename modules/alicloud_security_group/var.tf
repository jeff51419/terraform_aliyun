variable "security_group_name" {
  type    = string
  default = null
}

variable "vpc_id" {
  type    = string
  default = null
}

variable "description" {
  type    = string
  default = null
}

variable "resource_group_id" {
  type    = string
  default = null
}

variable "security_group_type" {
  type    = string
  default = null
}

variable "inner_access_policy" {
  type    = string
  default = null
  description = "Whether to allow both machines to access each other on all ports in the same security group. Valid values: [Accept, Drop]"
}

variable "tags" {
  description = "The tags used to launch a new security group"
  type        = map(string)
  default     = {}
}

variable "existing_group_id" {
  description = "The id a old security group"
  type    = string
  default = null
}