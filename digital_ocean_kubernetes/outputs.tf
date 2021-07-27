output "kubeconfig" {
  value = digitalocean_kubernetes_cluster.do_k8_prod.kube_config[0].raw_config
}


output "kubeconfig_host" {
  value = digitalocean_kubernetes_cluster.do_k8_prod.endpoint
}

output "kubeconfig_token" {
  value     = digitalocean_kubernetes_cluster.do_k8_prod.kube_config[0].token
  sensitive = true
}

output "kubeconfig_ca_certificate" {
  value = digitalocean_kubernetes_cluster.do_k8_prod.kube_config[0].cluster_ca_certificate
}

output "kubeconfig_client_certificate" {
  value = digitalocean_kubernetes_cluster.do_k8_prod.kube_config[0].client_certificate
}

output "kubeconfig_client_key" {
  value     = digitalocean_kubernetes_cluster.do_k8_prod.kube_config[0].client_key
  sensitive = true
}