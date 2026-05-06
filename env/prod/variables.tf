variable "rg_name" {}
variable "location" {}
variable "subnet_name" {}
variable "aks_name" {}
variable "dns_prefix" {}

variable "node_count" {}
variable "vm_size" {}
variable "vnet_name" {}
variable "service_cidr" {}
variable "dns_service_ip" {}
variable "vnet_address_space" {
  type = list(string)
}

variable "subnet_address_prefixes" {
  type = list(string)
}