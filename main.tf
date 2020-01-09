
resource "aws_route" "tgw_route_cidr" {
  count                  = length(distinct(var.route_tables))
  route_table_id         = element(distinct(var.route_tables), count.index)
  destination_cidr_block = var.destination_cidr
  transit_gateway_id     = var.transit_gateway_id
}
