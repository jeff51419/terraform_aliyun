############################ Provides a EIP resource ########################################################

# Create a new EIP.
resource "alicloud_eip" "this" {
  count                = local.eip_count
  #name                 = local.eip_count > 1 || var.use_num_suffix ? format("${var.name_prefix}%02s", count.index+1) : var.name
  name                 = format("${var.name_prefix}%02s", count.index+1)
  description          = var.description
  bandwidth            = var.bandwidth
  internet_charge_type = var.internet_charge_type
  instance_charge_type = var.instance_charge_type
  period               = var.period
  isp                  = var.isp
  resource_group_id    = var.resource_group_id
  tags = merge(
    {
      Name = format("${var.name_prefix}%02s", count.index+1)
    },
    var.tags
  )
}