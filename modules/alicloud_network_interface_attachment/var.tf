variable "instance_id" {
  description = " (Required, ForceNew) The instance ID to attach"
  type        = string
  default     = null
}

variable "network_interface_id" {
  description = "(Required, ForceNew) The ENI ID to attach."
  type        = string
  default     = null
}