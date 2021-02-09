############################ alicloud_instance ########################################################

resource "alicloud_instance" "this" {
  count                      = var.number_of_instances
  
  image_id                   = var.image_id
  instance_type              = var.instance_type

  # cn-beijing
  availability_zone          = var.availability_zone
  security_groups            = var.security_group_ids
  instance_charge_type       = var.instance_charge_type
  #dry_run                    = var.dry_run
  # series III
  #(Optional) Valid values are ephemeral_ssd, cloud_efficiency, cloud_ssd, cloud_essd, cloud
  system_disk_category       = var.system_disk_category
  system_disk_size           = var.system_disk_size
  # instance_name              = "${var.name_prefix}${count.index+1}"
  instance_name              = format("${var.name_prefix}%02s", count.index+1)
  vswitch_id                 = var.vswitch_id
  internet_max_bandwidth_in  = var.internet_max_bandwidth_in
  internet_max_bandwidth_out = var.internet_max_bandwidth_out
  user_data                  = var.user_data
  deletion_protection        = var.deletion_protection
  tags                       = var.tags
  resource_group_id          = var.resource_group_id
  key_name                   = var.key_name
  status                     = var.status
  #system_disk_auto_snapshot_policy_id = var.system_disk_auto_snapshot_policy_id
}
