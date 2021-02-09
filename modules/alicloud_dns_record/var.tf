variable "name" {
  type        = string
  description = "Name of the domain"
  default     = null
}

variable "host_record" {
  type        = string
  description = "Host record for the domain record"
  default     = null
}

variable "type" {
  type        = string
  description = "The type of domain record"
  # Valid values are A,NS,MX,TXT,CNAME,SRV,AAAA,CAA, REDIRECT_URL and FORWORD_URL
  default     = null
}

variable "value" {
  type        = string
  description = "The value of domain record"
  # server will treat the value as a fully qualified domain name, so it's no need to add a . at the end
  default     = null
}

variable "ttl" {
  type        = number
  description = "The effective time of domain record"
  # server will treat the value as a fully qualified domain name, so it's no need to add a . at the end
  # Free is [600, 86400], Basic is [120, 86400], Standard is [60, 86400], Ultimate is [10, 86400], Exclusive is [1, 86400]
  default     = 600
}

variable "priority" {
  type        = number
  description = "The priority of domain record Valid values are 1-10. When the type is MX, this parameter is required."
  default     = null
}

variable "routing" {
  type        = string
  description = "The resolution line of domain record."
  # Valid values are default, telecom, unicom, mobile, oversea, edu, drpeng, btvn
  # Default value is default
  default     = null
}
