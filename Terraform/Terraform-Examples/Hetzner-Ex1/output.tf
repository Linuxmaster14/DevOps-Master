output "Server-Name" {
  value = hcloud_server.web_server.name
}

output "Server-Location" {
  value = hcloud_server.web_server.location
}

output "Server-IPv4" {
  value = hcloud_server.web_server.ipv4_address
}

output "Server-Id" {
  value = hcloud_server.web_server.id
}

output "Server-Statu" {
  value = hcloud_server.web_server.status
}