######Provides an Alicloud ECS Elastic Network Interface Attachment as a resource to attach ENI ########################################################

resource "alicloud_network_interface_attachment" "this" {
  instance_id            = var.instance_id
  network_interface_id   = var.network_interface_id
}