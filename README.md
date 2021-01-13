# terraform-aws-transitgateway-route-cidr
[![](https://github.com/rhythmictech/terraform-aws-transitgateway-route-cidr/workflows/check/badge.svg)](https://github.com/rhythmictech/terraform-aws-transitgateway-route-cidr/actions)

Manage a [Transit Gateway](https://docs.aws.amazon.com/vpc/latest/tgw/what-is-transit-gateway.html) route table entry.

Example:

```
module "awsvpn_tgw_route_cidr" {
  source             = "git::https://github.com/rhythmictech/terraform-aws-transitgateway-route-cidr"
  destination_cidr   = "192.168.0.0/24"
  route_tables       = concat(module.vpc.public_route_table_ids, module.vpc.private_route_table_ids)
  transit_gateway_id = "tgw-1234567a"
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| destination\_cidr | CIDR for route | `string` | n/a | yes |
| route\_tables | Route talbes to install route in | `list(string)` | n/a | yes |
| transit\_gateway\_id | Transit Gateway ID | `string` | n/a | yes |

## Outputs

No output.

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Related Projects
* [Transit Gateway](https://github.com/rhythmictech/terraform-aws-transitgateway)
