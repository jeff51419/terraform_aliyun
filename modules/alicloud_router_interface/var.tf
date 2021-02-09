# VPC variables
variable "opposite_region" {
  description = "The Region of peer side."
  type        = string
  default     = null
}

variable "router_type" {
  description = "Router Type. Optional value: VRouter, VBR. Accepting side router interface type only be VRouter."
  type        = string
  default     = "AcceptingSide"
}

#说明 当Role为AcceptingSide（连接接收端）时，Spec取值为Negative。
variable "role" {
  description = "The role the router interface plays. Optional value: InitiatingSide or AcceptingSide"
  type        = string
  default     = "AcceptingSide"
}

variable "router_id" {
  description = "The Router ID"
  type        = string
  default     = null
}

#路由器接口的规格。可用的规格和对应的带宽如下：Mini.2：2Mbps, Middle.1：100Mbps, Large.5：5000 Mbps
variable "specification" {
  description = "Specification of router interfaces."
  type        = string
  default     = null
}

variable "name" {
  description = "Name of the router interface"
  type        = string
  default     = null
}

variable "description" {
  description = "The route table description used to launch a new route table."
  type        = string
  default     = "A new route table created by Terrafrom module"
}
