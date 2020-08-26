variable "destination_cidr" {
  description = "CIDR for route"
  type        = string
}

variable "route_tables" {
  description = "Route talbes to install route in"
  type        = list(string)
}

variable "route_table_count" {
  default     = null
  description = "number of route tables that will be created"
  type        = number
}

variable "transit_gateway_id" {
  description = "Transit Gateway ID"
  type        = string
}
