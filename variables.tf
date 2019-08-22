variable "transit_gateway_id" {
  type = string
}

variable "route_tables" {
  type = list(string)
}

variable "destination_cidr" {
  type    = string
}
