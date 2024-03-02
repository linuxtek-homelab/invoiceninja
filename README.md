# Homelab InvoiceNinja IaC Automation

## Summary

IaC for building InvoiceNinja on Proxmox in a homelab setting.

## Notes

* Using Ansible for automation, as while there are some community based Terraform providers, they aren't fully developed.  
* Ansible has a fairly developed [community module](https://docs.ansible.com/ansible/latest/collections/community/general/proxmox_module.html) for Proxmox.
* Will be attempting to automate [this guide](https://forum.invoiceninja.com/t/install-invoice-ninja-v5-5-on-ubuntu-22-04/13272) for installing Invoice Ninja 5.5 on Ubuntu 22.04.

## Steps

1. Add all prerequisites to local machine for running Ansible against Proxmox.
2. Automate installation of Ubuntu 22.04 with all of the basic dependencies.  This will require setting up Packer to build a custom image.
3. Deploy the custom image to a customized VM in Proxmox 

## Prerequisites
Install the following packages locally:

```
whois, packer, ansible, 
```

## Packer

* Using Packer builder [proxmox-iso](https://developer.hashicorp.com/packer/integrations/hashicorp/proxmox/latest/components/builder/iso) to take the Ubuntu 22.04 ISO image, run provisioning, and create a virtual machine template.
* Use checksum from [Ubuntu 22.04 Release](https://releases.ubuntu.com/22.04/SHA256SUMS).

## How to Use

If running locally, export the following environment variables:

```
export PROXMOX_URL=https://10.10.10.10:8006/api2/json
export PROXMOX_USER=packer@pve
export PROXMOX_PASSWORD="Enter Password"
export PROXMOX_NODE_NAME="pve-node1"
export LINUXADMIN_PASSWORD="Password"
export AUTHORIZED_SSH_KEY=`cat ~/.ssh/id_rsa.pub`
```
