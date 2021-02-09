variable "load_balancer_id" {
  description = "The Load Balancer ID which is used to launch a new listener."
  type        = string
  default     = null
}

variable "frontend_port" {
  description = "Port used by the Server Load Balancer instance frontend. Valid value range 1-65535"
  type        = number
  default     = 1
}

variable "backend_port" {
  description = "Port used by the Server Load Balancer instance backend. Valid value range 1-65535"
  type        = number
  default     = 80
}

variable "protocol" {
  description = "The protocol to listen on. Valid values are http https tcp udp."
  type        = string
  default     = "tcp"
}

variable "bandwidth" {
  description = "Bandwidth peak of Listener."
  # Listener can be set to -1, indicating the bandwidth peak is unlimited
  # Valid values are [-1, 1-1000] in Mbps.
  type        = number
  default     = -1
}

variable "sticky_session" {
  description = "Whether to enable session persistence Valid values are on and off"
  # Valid values are on and off
  type        = string
  default     = "off"
}

variable "sticky_session_type" {
  description = "Mode for handling the cookie"
  # Valid values are insert and server
  # insert means it is inserted from Server Load Balancer; 
  # server means the Server Load Balancer learns from the backend server
  type        = string
  default     = "insert"
}

variable "cookie_timeout" {
  description = "Cookie timeout."
  # Cookie timeout It is mandatory when sticky_session is "on" and sticky_session_type is "insert"
  type        = string
  default     = null
}

variable "cookie" {
  description = "The cookie configured on the server"
  type        = string
  default     = null
}


variable "description" {
  description = "The description of slb listener. "
  type        = string
  default     = null
}

variable "health_check" {
  description = "Whether to enable health check. Valid values areon and off"
  type        = string
  default     = "on"
}

variable "health_check_type" {
  description = "Type of health check. Valid values are tcp and http."
  type        = string
  default     = "tcp"
}

variable "health_check_domain" {
  description = "Domain name used for health check. When it used to launch TCP listener"
  type        = string
  default     = null
}

variable "health_check_uri" {
  description = "URI used for health check"
  type        = string
  default     = null
}

variable "healthy_threshold" {
  description = "Threshold determining the result of the health check is success."
  # Valid value range: [1-10] in seconds. Default to 3.
  type        = number  
  default     = 3
}

variable "unhealthy_threshold" {
  description = "Threshold determining the result of the health check is fail. "
  # Valid value range: [1-10] in seconds. Default to 3.
  type        = number  
  default     = 3
}

variable "health_check_timeout" {
  description = "Maximum timeout of each health check response"
  # Valid value range: [1-300] in seconds. Default to 5.
  type        = number  
  default     = 5
}

variable "health_check_interval" {
  description = "Time interval of health checks. "
  # t is required when health_check is on. Valid value range: [1-50] in seconds
  type        = number  
  default     = 2
}

variable "health_check_connect_port" {
  description = "Port used for health check"
  # Default to "None" means the backend server port is used.
  type        = number
  default     = null
}

variable "health_check_http_code" {
  description = "Regular health check HTTP status code"
  # Multiple codes are segmented by “,”. It is required when health_check is on
  # Default to http_2xx. Valid values are: http_2xx, http_3xx, http_4xx and http_5xx.
  type        = string
  default     = null
}

variable "x_forwarded_for" {
  description = "Whether to set additional HTTP Header field"
  type        = map(string)
  default     = {}
}

variable "health_check_method" {
  description = "HealthCheckMethod used for health check.values: [head, get]."
  # This function does not support the TCP protocol .
  type        = string
  default     = null
}

variable "established_timeout" {
  description = "Timeout of tcp listener established connection idle timeout."
  # Valid value range: [10-900] in seconds. Default to 900.
  type        = number
  default     = 900
}

variable "request_timeout" {
  description = "Timeout of http or https listener request "
  type        = number
  default     = 60
}

variable "idle_timeout" {
  description = "Timeout of http or https listener established connection idle timeout"
  type        = number
  default     = 15
}

variable "acl_status" {
  description = "Whether to enable access control list the acl is specified by acl_id"
  # values are on and off
  type        = string
  default     = "off"
}

variable "acl_type" {
  description = "Mode for handling the acl specified by acl_id"
  # If acl_status is "on", it is mandatory
  # Valid values are white and black.
  # white means the Listener can only be accessed by client ip belongs to the acl
  # black means the Listener can not be accessed by client ip belongs to the acl.
  type        = string
  default     = "white"
}

variable "acl_id" {
  description = "the id of access control list to be apply on the listener,"
  type        = string
  default     = null
}

variable "server_group_id" {
  description = "the id of server group to be apply on the listener, is the id of resource alicloud_slb_server_group"
  type        = string
  default     = null
}

variable "delete_protection_validation" {
  description = "Checking DeleteProtection of SLB instance before deleting"
  type        = bool
  default     = false
}

variable "persistence_timeout" {
  # Valid value range: [0-3600] in seconds. Default to 0 and means closing it.
  description = "Timeout of connection persistence "
  type        = number
  default     = 0
}