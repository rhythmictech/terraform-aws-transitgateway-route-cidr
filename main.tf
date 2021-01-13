resource "aws_route" "tgw_route_cidr" {
  for_each               = toset(var.route_tables)
  route_table_id         = each.key
  destination_cidr_block = var.destination_cidr
  transit_gateway_id     = var.transit_gateway_id
}
