variable "key_name" {
  description = "(Required, ForceNew) The name of key pair used to bind"
  type        = string
  default     = null
}

variable "instance_ids" {
  description = "(Required, ForceNew) The list of ECS instance's IDs."
  type        = list(string)
  default     = []
}

variable "force" {
  description = " (ForceNew) Set it to true and it will reboot instances which attached with the key pair to make key pair affect immediately"
  type        = bool
  default     = false
}
