<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_digitalocean"></a> [digitalocean](#requirement\_digitalocean) | ~> 2.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_digitalocean"></a> [digitalocean](#provider\_digitalocean) | 2.10.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [digitalocean_droplet.droplet](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/droplet) | resource |
| [digitalocean_record.a](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/record) | resource |
| [digitalocean_domain.domain](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/data-sources/domain) | data source |
| [digitalocean_ssh_key.sshkey](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/data-sources/ssh_key) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_dns_domain"></a> [dns\_domain](#input\_dns\_domain) | DNS Domain where register the new droplet | `any` | n/a | yes |
| <a name="input_dns_name"></a> [dns\_name](#input\_dns\_name) | DNS name to register as record type A | `any` | n/a | yes |
| <a name="input_do_token"></a> [do\_token](#input\_do\_token) | Digital Ocean Access token | `any` | n/a | yes |
| <a name="input_image"></a> [image](#input\_image) | Droplet image to use | `string` | `"fedora-28-x64"` | no |
| <a name="input_monitoring"></a> [monitoring](#input\_monitoring) | Boolean flag, use Digital ocean monitoring or not | `string` | `"true"` | no |
| <a name="input_name"></a> [name](#input\_name) | The droplet name | `any` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Digital ocean region where create the droplet | `string` | `"fra1"` | no |
| <a name="input_size"></a> [size](#input\_size) | Droplet size | `string` | `"512mb"` | no |
| <a name="input_sshkey_name"></a> [sshkey\_name](#input\_sshkey\_name) | SSH Key name already added to digital ocean | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_fqdn"></a> [fqdn](#output\_fqdn) | n/a |
| <a name="output_ipv4_address"></a> [ipv4\_address](#output\_ipv4\_address) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->