data "aws_subnet" "default" {
  for_each = var.create ? {
    for network_interface in var.network_interfaces : network_interface.device_index => network_interface
    if try(network_interface.subnet_name, null) != null
  } : {}

  filter {
    name   = "tag:Name"
    values = [each.value.subnet_name]
  }
}
