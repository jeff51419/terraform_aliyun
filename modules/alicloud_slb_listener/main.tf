############################ alicloud_slb_listener ########################################################
# Provides an Application Load Balancer Listener resource.
# For information about slb and how to use it, see What is Server Load Balancer.
# For information about listener and how to use it, to see the following:


resource "alicloud_slb_listener" "this" {
  load_balancer_id          = var.load_balancer_id
  backend_port              = var.backend_port
  frontend_port             = var.frontend_port
  protocol                  = var.protocol
  bandwidth                 = var.bandwidth
  sticky_session            = var.sticky_session
  sticky_session_type       = var.sticky_session_type
  cookie_timeout            = var.cookie_timeout
  cookie                    = var.cookie
  health_check              = var.health_check
  health_check_domain       = var.health_check_domain
  health_check_uri          = var.health_check_uri
  health_check_method       = var.health_check_method
  health_check_connect_port = var.health_check_connect_port
  healthy_threshold         = var.healthy_threshold
  unhealthy_threshold       = var.unhealthy_threshold
  health_check_timeout      = var.health_check_timeout
  health_check_interval     = var.health_check_interval
  health_check_http_code    = var.health_check_http_code
  request_timeout           = var.request_timeout
  idle_timeout              = var.idle_timeout
  description               = var.description
  # Error: expected persistence_timeout to be in the range (1 - 3600), got 0
  # persistence_timeout       = var.persistence_timeout
  server_group_id           = var.server_group_id
}