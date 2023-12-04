terraform {
  required_providers {
    hcloud = {
      source  = "hetznercloud/hcloud"
      version = "1.44.1"
    }
  }
}

provider "hcloud" {
  # hcloud_token = "my-hetzner-token"
}

# Environment Variables
# export HCLOUD_TOKEN="token"