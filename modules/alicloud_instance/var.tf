# Ecs instance variables
variable "number_of_instances" {
  description = "The number of instances to be created."
  type        = number
  default     = 1
}

variable "image_id" {
  type        = string
  description = "The image id used to launch one or more ecs instances."
  default     = null
}

variable "instance_type" {
  type        = string
  description = "The instance type used to launch one or more ecs instances."
  default     = null
}

variable "security_group_ids" {
  description = "A list of security group ids to associate with."
  type        = list(string)
  default     = []
}

variable "name_prefix" {
  type    = string
  description = "Name to be used on all resources as prefix. Default to 'TF-Module-ECS-Instance'. The final default name would be TF-Module-ECS-Instance001, TF-Module-ECS-Instance002 and so on."
  default     = null
}

variable "resource_group_id" {
  description = "The Id of resource group which the instance belongs."
  type        = string
  default     = null
}

variable "internet_charge_type" {
  description = "The internet charge type of instance. Choices are 'PayByTraffic' and 'PayByBandwidth'."
  default     = "PayByTraffic"
}

variable "availability_zone" {
  type    = string
  default = "cn-shenzhen-c"
}

variable "system_disk_category" {
  description = "The system disk category used to launch one or more ecs instances."
  default     = "cloud_efficiency"
}

variable "system_disk_size" {
  description = "The system disk size used to launch one or more ecs instances."
  type        = number
  default     = 40
}

variable "vswitch_id" {
  description = "The virtual switch ID to launch in VPC."
  default     = null
}

variable "vswitch_ids" {
  description = "A list of virtual switch IDs to launch in."
  type        = list(string)
  default     = []
}

variable "private_ip" {
  description = "Configure Instance private IP address"
  default     = null
}

variable "private_ips" {
  description = "A list to configure Instance private IP address"
  type        = list(string)
  default     = []
}

variable "internet_max_bandwidth_in" {
  description = "The maximum internet in bandwidth of instance."
  #Value range: [1, 200]. 
  type        = number
  default     = 1000
}

variable "internet_max_bandwidth_out" {
  description = "The maximum internet out bandwidth of instance."
  type        = number
  default     = 0
}

variable "associate_public_ip_address" {
  description = "Whether to associate a public ip address with an instance in a VPC."
  type        = bool
  default     = false
}

variable "instance_charge_type" {
  #Valid values are PrePaid, PostPaid
  type    = string
  description = "The charge type of instance. Choices are 'PostPaid' and 'PrePaid'."
  default     = "PostPaid"
}

variable "dry_run" {
  description = "Whether to pre-detection. When it is true, only pre-detection and not actually modify the payment type operation. Default to false."
  type        = bool
  default     = false
}

variable "user_data" {
  description = "User data to pass to instance on boot"
  default     = null
}

variable "role_name" {
  description = "Instance RAM role name. The name is provided and maintained by RAM. You can use `alicloud_ram_role` to create a new one."
  default     = null
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}

variable "spot_strategy" {
  description = "The spot strategy of a Pay-As-You-Go instance, and it takes effect only when parameter `instance_charge_type` is 'PostPaid'. Value range: 'NoSpot': A regular Pay-As-You-Go instance. 'SpotWithPriceLimit': A price threshold for a spot instance. 'SpotAsPriceGo': A price that is based on the highest Pay-As-You-Go instance"
  default     = "NoSpot"
}

variable "spot_price_limit" {
  description = "The hourly price threshold of a instance, and it takes effect only when parameter 'spot_strategy' is 'SpotWithPriceLimit'. Three decimals is allowed at most."
  default     = 0
}

variable "deletion_protection" {
  description = "Whether enable the deletion protection or not. 'true': Enable deletion protection. 'false': Disable deletion protection."
  type        = bool
  default     = true
}

variable "key_name" {
  description = "(Optional, Force new resource) The name of key pair that can login ECS instance successfully without password"
  type        = string
  default     = ""
}

variable "force_delete" {
  description = "If it is true, the 'PrePaid' instance will be change to 'PostPaid' and then deleted forcibly. However, because of changing instance charge type has CPU core count quota limitation, so strongly recommand that `Don't modify instance charge type frequentlly in one month`."
  default     = true
}

variable "security_enhancement_strategy" {
  description = "The security enhancement strategy."
  default     = "Active"
}

variable "system_disk_auto_snapshot_policy_id" {
  description = "The ID of the automatic snapshot policy applied to the system disk"
  default     = null
}

variable "status" {
  type        = string
  description = "The instance status. Valid values: [Running, Stopped]. You can control the instance start and stop through this parameter"
  default     = "Running"
}