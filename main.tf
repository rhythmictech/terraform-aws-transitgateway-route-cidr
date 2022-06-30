resource "aws_route" "tgw_route_cidr" {
  for_each                     = toset(var.route_tables)
  route_table_id               = each.key
  destination_cidr_block       = var.destination_cidr
  destination_ipv6_cidr_block  = var.destination_cidr_ipv6
  destination_prefix_list_id   = var.destination_prefix_list_id
  transit_gateway_id           = var.transit_gateway_id
}
