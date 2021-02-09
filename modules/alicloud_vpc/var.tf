# VPC variables
variable "name" {
  description = "The vpc name used to launch a new vpc."
  type        = string
  default     = ""
}

variable "cidr_block" {
  description = "The cidr block used to launch a new vpc."
  type        = string
  default     = ""
}

variable "secondary_cidr_blocks" {
  description = "he secondary CIDR blocks for the VPC"
  type        = string
  default     = ""
}

variable "description" {
  description = "The vpc description used to launch a new vpc."
  type        = string
  default     = "A new VPC created by Terrafrom module terraform-alicloud-vpc"
}

variable "tags" {
  description = "The tags used to launch a new vpc. Before 1.5.0, it used to retrieve existing VPC."
  type        = map(string)
  default     = {}
}

variable "resource_group_id" {
  description = "The Id of resource group which the VPC belongs."
  type        = string
  default     = ""
}