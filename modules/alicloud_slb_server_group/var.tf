# SLB variables
variable "load_balancer_id" {
  description = "The Load Balancer ID which is used to launch a new virtual server group."
  type        = string
  default     = null
}

variable "name" {
  description = "Name of the virtual server group. Our plugin provides a default name tf-server-group"
  type        = string
  default     = null
}

# variable "servers" {
#   description = "A list of ECS instances to be added."
#   # It contains three sub-fields as Block server follows.
#   # server_ids - (Required) A list backend server ID (ECS instance ID).
#   # port - (Required) The port used by the backend server. Valid value range: [1-65535].
#   # weight - (Optional) Weight of the backend server. Valid value range: [0-100]. Default to 100.
#   # type - (Optional, Available in 1.51.0+) Type of the backend server. Valid value ecs, eni. Default to eni.
#   type        = object({ server_ids=list(string), port=number, weight=number, type=string })
# }

variable "server_ids" {
  description = "server_ids - (Required) A list backend server ID (ECS instance ID)."
  type        = list(string)
  default     = null
}

variable "port" {
  description = "port - (Required) The port used by the backend server. Valid value range: [1-65535]."
  type        = number
  default     = 80
}

variable "weight" {
  description = "(Optional) Weight of the backend server. Valid value range: [0-100]. Default to 100."
  type        = number
  default     = 100
}

variable "type" {
  description = "(Optional, Available in 1.51.0+) Type of the backend server. Valid value ecs, eni. Default to eni."
  type        = string
  default     = null
}


variable "delete_protection_validation" {
  description = "Name of the virtual server group. Our plugin provides a default name tf-server-group"
  type        = bool
  default     = false
}
