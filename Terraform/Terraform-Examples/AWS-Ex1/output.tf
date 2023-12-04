output "instance_ip" {
  value       = aws_instance.linuxmaster.public_ip
  description = "Public IP for the AWS instance"
}

output "instance_dns" {
  value       = aws_instance.linuxmaster.public_dns
  description = "Public DNS for the AWS instance"
}

output "instance_state" {
  value       = aws_instance.linuxmaster.instance_state
  description = "State for the AWS instance"
}

