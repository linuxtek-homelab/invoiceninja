packer {
  required_plugins {
    name = {
      version = "~> 1"
      source  = "github.com/hashicorp/proxmox"
    }
  }
}

source "proxmox-iso" "ubuntu-invoiceninja" {
    
    # Connection Configuration
    proxmox_url                 = "${var.proxmox_url}"
    username                    = "${var.proxmox_user}"
    password                    = "${var.proxmox_password}"
    insecure_skip_tls_verify    = "true"
    node                        = "${var.proxmox_node}"

}