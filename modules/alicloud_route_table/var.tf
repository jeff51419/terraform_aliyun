# VPC variables


variable "name" {
  description = "The route table name used to launch a new route table."
  type        = string
  default     = null
}

variable "vpc_id" {
  description = "The vpc id used to launch route table"
  type        = string
  default     = null
}

variable "description" {
  description = "The route table description used to launch a new route table."
  type        = string
  default     = "A new route table created by Terrafrom module"
}

variable "tags" {
  description = "The tags used to launch a new route table."
  type        = map(string)
  default     = {}
}