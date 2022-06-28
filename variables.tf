variable "destination_cidr" {
  description = "CIDR for route"
  type        = string
  default     = null
}

variable "route_tables" {
  description = "Route talbes to install route in"
  type        = list(string)
}

variable "transit_gateway_id" {
  description = "Transit Gateway ID"
  type        = string
}

variable "destination_cidr_ipv6" {
  description = "IPv6 CIDR for route"
  type        = string
  default     = null
}

variable "destination_prefix_list_id" {
  description = "Prefix list to add to route table"
  type        = string
  default     = null
}
