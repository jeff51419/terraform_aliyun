variable "name" {
  description = "(Optional) The name of the nat_gateway. Defaults to null."
  type        = string
  default     = null
}

variable "vpc_id" {
  description = "(Required, ForceNew) The VPC ID."
  type        = string
  default     = null
}