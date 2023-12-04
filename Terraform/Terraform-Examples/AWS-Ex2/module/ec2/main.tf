resource "aws_key_pair" "linuxmaster" {
  key_name   = "linuxmaster-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC/qIMwafSDudXD1ACubEi+/UocMOTXWN1Mjv5tK74+hJK0uW5fPZvgLP0LSpR2GNB1+cdIqT9vN+vhAXsZlug3o2tl0y3Wgc5GIlmcSIlltQno0h/mQtb0bmQQ6uLBkAqLAZlRme8Zq3j5rriuQKH0ELHggclVgKMqd+wfJfb3unTNhv0005/8kLxtCR7B722brfQeAOMDIRQfbsuRuHO9KBf4b5mVIosdQ2rHwpe5qPlyhm0MgjLHJrMa7B7Sn+TQhizGxD9VGbbeCEeXKOvLqwCSkKZLz7Oq/vAIaaCLau9XJoeYNYyHFtsnMudST/my45GiihwDizJdQYshHHd+bD7RZYRRPShhqreygPZfiAPRRvcqRYiTrV6Y5jzdfp3ewAvY50hi/O0pnQ+rEYta8FdEJ5lU8Hw18/ydMGhz7tG2iicP2ZRWtXoCwOa9tn+s3EHbP5u9zzwT1wqIVyv9shS8rMZvLKwJ7my4/oUcBjbZNLqjGaZjE4WPZq0BMFU="
}

resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  security_groups = [aws_security_group.allow_ssh.name]

  tags = {
    Name = var.instance_name
  }
}