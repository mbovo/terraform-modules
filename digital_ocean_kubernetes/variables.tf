variable "do_token" {
  description = "Digital Ocean Token to use to provision this Kubernetes Cluster"
}

variable "kubernetes_version" {
  description = "Kubernetes version, defaulting to latest 1.21 available"
  default     = ""
}

variable "region" {
  description = "Region where create the cluster (fra1)"
  type        = string
  default     = "fra1"
}

variable "cluster_name" {
  description = "Cluster name"
  type        = string
}

variable "cluster_auto_upgrade" {
  description = "Automatically upgrade this cluster"
  type        = bool
  default     = true
}

variable "cluster_tags" {
  description = "Tags"
  type        = list(string)
}

variable "default_nodepool_name" {
  type    = string
  default = "infra"
}

variable "default_nodepool_size" {
  type    = string
  default = "s-1vcpu-2gb"
}

variable "default_nodepool_count" {
  type    = number
  default = 1
}

variable "default_nodepool_tags" {
  type    = list(string)
  default = ["infra"]
}

variable "default_nodepool_auto_scale" {
  type    = bool
  default = false
}

variable "additional_nodepools" {
  type = map(
    object({
      name       = string,
      size       = string,
      node_count = number,
      tags       = list(string),
      auto_scale = bool,
      min_nodes  = number,
      max_nodes  = number
    })
  )

}

variable "project_names" {
  description = "Project to attach to"
  type        = list(string)
  default     = ["Staging"]
}