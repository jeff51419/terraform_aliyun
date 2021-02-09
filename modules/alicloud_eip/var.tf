variable "create" {
  description = "Whether to create an EIP instance and whether to associate EIP with other resources."
  default     = true
}

variable "number_of_eips" {
  description = "The number of eip to be created." 
  type        = number
  default     = 1
}

variable "use_num_suffix" {
  description = "Always append numerical suffix to instance name, even if number_of_instances is 1"
  type        = bool
  default     = false
}

variable "name" {
  description = "Name to be used on all resources as prefix. Default to 'TF-Module-EIP'. The final default name would be TF-Module-EIP001, TF-Module-EIP002 and so on."
  default     = "TF-Module-EIP"
}

variable "name_prefix" {
  type    = string
  description = "Name to be used on all resources as prefix. Default to 'TF-Module-EIP'. The final default name would be TF-Module-ECS-Instance001, TF-Module-ECS-Instance002 and so on."
  default     = "TF-Module-EIP"
}

variable "description" {
  description = " Description of the EIP, This description can have a string of 2 to 256 characters, It cannot begin with http:// or https://. Default value is null."
  type        = string
  default     = "An EIP came from terraform-alicloud-modules/eip"
}

variable "bandwidth" {
  description = "Maximum bandwidth to the elastic public network, measured in Mbps (Mega bit per second)."
  type        = number
  default     = 5
}

variable "internet_charge_type" {
  description = "Internet charge type of the EIP, Valid values are `PayByBandwidth`, `PayByTraffic`. "
  type        = string
  default     = "PayByTraffic"
}


variable "instance_charge_type" {
  description = "Elastic IP instance charge type."
  type        = string
  default     = "PostPaid"
}

variable "period" {
  description = "The duration that you will buy the resource, in month."
  type        = number
  default     = 1
}

variable "tags" {
  description = "A mapping of tags to assign to the EIP instance resource."
  type        = map(string)
  default     = {}
}

variable "isp" {
  description = "The line type of the Elastic IP instance."
  type        = string
  default     = ""
}

variable "resource_group_id" {
  description = "The Id of resource group which the eip belongs."
  type        = string
  default     = ""
}