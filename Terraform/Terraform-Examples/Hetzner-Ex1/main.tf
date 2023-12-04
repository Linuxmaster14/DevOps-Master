resource "hcloud_ssh_key" "default" {
  name       = "linuxmaster-key"
  public_key = var.public_key
}

resource "hcloud_server" "web_server" {
  name        = var.server_name
  image       = var.image_name
  server_type = var.server_type
  location    = var.location_code
  public_net {
    ipv4_enabled = true
    ipv6_enabled = false
  }
}