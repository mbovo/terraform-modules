<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_digitalocean"></a> [digitalocean](#requirement\_digitalocean) | ~> 2.0 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | >= 2.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_digitalocean"></a> [digitalocean](#provider\_digitalocean) | 2.10.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [digitalocean_kubernetes_cluster.do_k8_prod](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/kubernetes_cluster) | resource |
| [digitalocean_kubernetes_node_pool.workers](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/kubernetes_node_pool) | resource |
| [digitalocean_project_resources.project_resources](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/project_resources) | resource |
| [digitalocean_kubernetes_versions.current](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/data-sources/kubernetes_versions) | data source |
| [digitalocean_projects.projects](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/data-sources/projects) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_additional_nodepools"></a> [additional\_nodepools](#input\_additional\_nodepools) | n/a | <pre>map(<br>    object({<br>      name       = string,<br>      size       = string,<br>      node_count = number,<br>      tags       = list(string),<br>      auto_scale = bool,<br>      min_nodes  = number,<br>      max_nodes  = number<br>    })<br>  )</pre> | n/a | yes |
| <a name="input_cluster_auto_upgrade"></a> [cluster\_auto\_upgrade](#input\_cluster\_auto\_upgrade) | Automatically upgrade this cluster | `bool` | `true` | no |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | Cluster name | `string` | n/a | yes |
| <a name="input_cluster_tags"></a> [cluster\_tags](#input\_cluster\_tags) | Tags | `list(string)` | n/a | yes |
| <a name="input_default_nodepool_auto_scale"></a> [default\_nodepool\_auto\_scale](#input\_default\_nodepool\_auto\_scale) | n/a | `bool` | `false` | no |
| <a name="input_default_nodepool_count"></a> [default\_nodepool\_count](#input\_default\_nodepool\_count) | n/a | `number` | `1` | no |
| <a name="input_default_nodepool_name"></a> [default\_nodepool\_name](#input\_default\_nodepool\_name) | n/a | `string` | `"infra"` | no |
| <a name="input_default_nodepool_size"></a> [default\_nodepool\_size](#input\_default\_nodepool\_size) | n/a | `string` | `"s-1vcpu-2gb"` | no |
| <a name="input_default_nodepool_tags"></a> [default\_nodepool\_tags](#input\_default\_nodepool\_tags) | n/a | `list(string)` | <pre>[<br>  "infra"<br>]</pre> | no |
| <a name="input_do_token"></a> [do\_token](#input\_do\_token) | Digital Ocean Token to use to provision this Kubernetes Cluster | `any` | n/a | yes |
| <a name="input_kubernetes_version"></a> [kubernetes\_version](#input\_kubernetes\_version) | Kubernetes version, defaulting to latest 1.21 available | `string` | `""` | no |
| <a name="input_project_names"></a> [project\_names](#input\_project\_names) | Project to attach to | `list(string)` | <pre>[<br>  "Staging"<br>]</pre> | no |
| <a name="input_region"></a> [region](#input\_region) | Region where create the cluster (fra1) | `string` | `"fra1"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_kubeconfig"></a> [kubeconfig](#output\_kubeconfig) | n/a |
| <a name="output_kubeconfig_ca_certificate"></a> [kubeconfig\_ca\_certificate](#output\_kubeconfig\_ca\_certificate) | n/a |
| <a name="output_kubeconfig_client_certificate"></a> [kubeconfig\_client\_certificate](#output\_kubeconfig\_client\_certificate) | n/a |
| <a name="output_kubeconfig_client_key"></a> [kubeconfig\_client\_key](#output\_kubeconfig\_client\_key) | n/a |
| <a name="output_kubeconfig_host"></a> [kubeconfig\_host](#output\_kubeconfig\_host) | n/a |
| <a name="output_kubeconfig_token"></a> [kubeconfig\_token](#output\_kubeconfig\_token) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->