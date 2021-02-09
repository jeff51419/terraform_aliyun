# dns variables
variable "name" {
  description = "Name of the domain."
  type        = string
  default     = null
}

variable "group_id" {
  description = "Id of the group in which the domain will add"
  type        = string
  default     = null
}

variable "resource_group_id" {
  description = "The Id of resource group which the dns belongs"
  type        = string
  default     = null
}

