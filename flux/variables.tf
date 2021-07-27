variable "cluster_name" {
  type        = string
  description = "string used to identify the git key pushed to the repo"
}

variable "github_owner" {
  type        = string
  description = "github owner"
  default     = "draios"
}

variable "github_token" {
  type        = string
  description = "github token, the user must be able to push files to the branch and create a repository deploy key"
  sensitive   = true
}

variable "repository_name" {
  type        = string
  description = "github repository name"
}

variable "branch" {
  type        = string
  default     = "main"
  description = "branch name"
}

variable "target_path" {
  type        = string
  description = "flux sync target path"
}

variable "k8s_host" {
  type        = string
  description = "endpoint of k8s cluster"
}

variable "k8s_client_certificate" {
  type        = string
  description = "client certificate to access k8s cluster"
}

variable "k8s_client_key" {
  type        = string
  description = "client key to access k8s cluster"
  sensitive   = true
}

variable "k8s_cluster_ca_certificate" {
  type        = string
  description = "k8s cluster ca certificate"
}
