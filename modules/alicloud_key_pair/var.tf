variable "key_name" {
  description = "(ForceNew) The key pair's name. It is the only in one Alicloud account."
  type        = string
  default     = null
}

variable "key_name_prefix" {
  description = "(ForceNew) The key pair name's prefix. It is conflict with key_name"
  type        = string
  default     = null
}

variable "public_key" {
  description = " (ForceNew) You can import an existing public key and using Alicloud key pair to manage it"
  type        = string
  default     = null
}

variable "key_file" {
  description = "(ForceNew) The name of file to save your new key pair's private key."
  type        = string
  default     = null
}

variable "resource_group_id" {
  description = "(ForceNew, Available in 1.57.0+) The Id of resource group which the key pair belongs"
  type        = string
  default     = null
}