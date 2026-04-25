terraform {
  required_providers {
    proxmox = {
      source  = "bpg/proxmox"
      version = "~> 0.50"
}
}
}

provider "proxmox" {
  endpoint = "https://10.0.0.199:8006/"
  insecure = true
}

