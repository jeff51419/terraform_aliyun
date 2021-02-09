variable "availability_zone" {
  type    = string
  default = "cn-shenzhen-c"
}

variable "vpc_id" {
  description = "(Required, ForceNew) The VPC ID."
  type        = string
  default     = null
}

variable "cidr_block" {
  description = "(Required, ForceNew) The CIDR block for the switch."
  type        = string
  default     = null
}

variable "name" {
  description = "(Optional) The name of the switch. Defaults to null."
  type        = string
  default     = null
}

variable "description" {
  description = "(Optional) The switch description. Defaults to null."
  type        = string
  default     = null
}