variable "name" {
  description = "Name of the access control list."
  type        = string
  default     = null
}

variable "ip_version" {
  description = "The IP Version of access control list is the type of its entry"
  # It values ipv4/ipv6.
  type        = string
  default     = "ipv4"
}

variable "entry_list" {
  description = "A list of entry (IP addresses or CIDR blocks) to be added."
  type        = string
  default     = null
}

variable "resource_group_id" {
  description = "The Id of resource group which the instance belongs."
  type        = string
  default     = null
}

variable "tags" {
  description = "A mapping of tags to assign to the resource. The tags can have a maximum of 10 tag"
  type        = map(string)
  default     = {}
}