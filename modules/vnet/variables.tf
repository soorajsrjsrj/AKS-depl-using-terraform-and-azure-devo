variable "vnet_name" {}
variable "location" {}
variable "rg_name" {}
variable "subnet_name" {}
variable "vnet_address_space" {
  type = list(string)
}

variable "subnet_address_prefixes" {
  type = list(string)
}