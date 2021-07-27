
#### REQUIRED ####

variable "do_token" {
  description = "Digital Ocean Access token"
}

variable "sshkey_name" {
  description = "SSH Key name already added to digital ocean"
}

variable "name" {
  description = "The droplet name"
}

variable "dns_domain" {
  description = "DNS Domain where register the new droplet"
}

variable "dns_name" {
  description = "DNS name to register as record type A"
}



#### OPTIONAL #####

variable "region" {
  description = "Digital ocean region where create the droplet"
  default     = "fra1"
}

variable "image" {
  description = "Droplet image to use"
  default     = "fedora-28-x64"
}

variable "size" {
  description = "Droplet size"
  default     = "512mb"
}

variable "monitoring" {
  description = "Boolean flag, use Digital ocean monitoring or not"
  default     = "true"
}

