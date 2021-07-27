output "fqdn" {
  value = digitalocean_record.a.fqdn
}

output "ipv4_address" {
  value = digitalocean_droplet.droplet.ipv4_address
}