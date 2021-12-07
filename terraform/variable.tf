variable "vault_url" {
  default = "VAULT_HASHICORP_URL"
  type    = string
}

variable "vsphere_server" {
  default = "vCENTER_URL"
  type    = string
}

variable "vsphere_datacenter" {
  default = "DATACENTER_NAME"
  type    = string
}

variable "datastore" {
  type    = string
  default = "DATASTORE_NAME"
}

variable "cluster" {
  type    = string
  default = "CLUSTER_NAME"
}

variable "pool" {
  type    = string
  default = "RECETTE"
}

variable "network" {
  type    = string
  default = "PORT_GROUP_NAME"
}

variable "template" {
  type    = string
  default = "model_centos7"
}

variable "folder" {
  type    = string
  default = "YS"
}

variable "vm_name" {
  type    = string
  default = "VM_NAME"
}
variable "host_name" {
  type    = string
  default = "riri"
}

variable "domain" {
  type    = string
  default = "DOMAIN"
}
variable "ip" {
  type    = string
  default = "IP_ADDRESS"
}

variable "gateway" {
  type    = string
  default = "GATEWAY"
}

variable "dns_list" {
  type    = list(string)
  default = ["DNS_SERVER_1", "DNS_SERVER_1"]
}

