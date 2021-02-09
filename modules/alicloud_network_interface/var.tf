variable "name_prefix" {
  type    = string
  description = "Name to be used on all resources as prefix. Default to 'TF-Module-ECS-Instance'. The final default name would be TF-Module-ECS-Instance001, TF-Module-ECS-Instance002 and so on."
  default     = null
}

variable "number_of_network_interface" {
  description = "The number of instances to be created."
  type        = number
  default     = 1
}

variable "name" {
  description = "(Optional) Name of the ENI. Defaults to null."
  type        = string
  default     = null
}

variable "vswitch_id" {
  description = "(Required, ForceNew) The VSwitch to create the ENI in"
  type        = string
  default     = null
}

variable "security_groups" {
  description = "(Require) A list of security group ids to associate with"
  type        = list(string)
  default     = []
}

variable "private_ip" {
  description = "(Optional, ForceNew) The primary private IP of the ENI."
  type        = string
  default     = null
}

variable "description" {
  description = "(Optional) Description of the ENI."
  type        = string
  default     = null
}

##Don't use both private_ips and private_ips_count in the same ENI resource block.

variable "private_ips" {
  description = "(Optional) List of secondary private IPs to assign to the ENI"
  type        = list(string)
  default     = []
}

variable "private_ips_count" {
  description = "(Optional) Number of secondary private IPs to assign to the ENI."
  type        = number
  default     = 1
}

##Don't use both private_ips and private_ips_count in the same ENI resource block.

variable "tags" {
  description = "(Optional) A mapping of tags to assign to the resource."
  type        = string
  default     = null
}

variable "resource_group_id" {
  description = "(ForceNew, ForceNew, Available in 1.57.0+) The Id of resource group which the network interface belongs."
  type        = string
  default     = null
}