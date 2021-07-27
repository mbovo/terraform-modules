
data "digitalocean_kubernetes_versions" "current" {
  version_prefix = "1.21."
}

data "digitalocean_projects" "projects" {
  filter {
    key    = "name"
    values = var.project_names
  }
}

resource "digitalocean_kubernetes_cluster" "do_k8_prod" {
  name         = var.cluster_name
  region       = var.region
  version      = var.kubernetes_version != "" ? var.kubernetes_version : data.digitalocean_kubernetes_versions.current.latest_version
  auto_upgrade = var.cluster_auto_upgrade
  tags         = var.cluster_tags

  node_pool {
    name       = var.default_nodepool_name
    size       = var.default_nodepool_size
    node_count = var.default_nodepool_count
    tags       = var.default_nodepool_tags
    auto_scale = var.default_nodepool_auto_scale
  }

}

resource "digitalocean_kubernetes_node_pool" "workers" {
  cluster_id = digitalocean_kubernetes_cluster.do_k8_prod.id

  for_each = var.additional_nodepools

  name       = each.value.name
  size       = each.value.size
  node_count = each.value.node_count
  tags       = each.value.tags

  auto_scale = each.value.auto_scale
  min_nodes  = each.value.min_nodes
  max_nodes  = each.value.max_nodes

}

resource "digitalocean_project_resources" "project_resources" {
  project = data.digitalocean_projects.projects.id
  resources = [
    digitalocean_kubernetes_cluster.do_k8_prod.urn
  ]
}

provider "kubernetes" {
  host  = digitalocean_kubernetes_cluster.do_k8_prod.endpoint
  token = digitalocean_kubernetes_cluster.do_k8_prod.kube_config[0].token
  cluster_ca_certificate = base64decode(
    digitalocean_kubernetes_cluster.do_k8_prod.kube_config[0].cluster_ca_certificate
  )
}