
data "digitalocean_ssh_key" "sshkey" {
  name = var.sshkey_name
}

resource "digitalocean_droplet" "droplet" {
  image      = var.image
  name       = var.name
  region     = var.region
  size       = var.size
  monitoring = var.monitoring
  ssh_keys   = ["${data.digitalocean_ssh_key.sshkey.fingerprint}"]
}

data "digitalocean_domain" "domain" {
  name = var.dns_domain
}

resource "digitalocean_record" "a" {
  domain = data.digitalocean_domain.domain.name
  type   = "A"
  name   = var.dns_name
  value  = digitalocean_droplet.droplet.ipv4_address
}
