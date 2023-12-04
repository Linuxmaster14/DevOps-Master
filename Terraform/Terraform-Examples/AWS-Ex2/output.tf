output "Instance-IP" {
  value = module.linuxmaster.public_ip
  description = "Public IP for the AWS instance"
}

output "Instance-DNS" {
  value = module.linuxmaster.public_dns
  description = "Public DNS for the AWS instance"
}