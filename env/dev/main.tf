module "rg" {
    source = "../../modules/rg"
    rg_name =  var.rg_name
    location = var.location
  
}

module "vnet" {
    source = "../../modules/vnet"
    rg_name =   module.rg.rg_name
    vnet_name = var.vnet_name
    location = var.location
    subnet_name = var.subnet_name
    vnet_address_space = var.vnet_address_space
    subnet_address_prefixes = var.subnet_address_prefixes
  
  
}
module "aks" {
  source              = "../../modules/aks"
  aks_name            = var.aks_name
  location            = var.location
  rg_name             = module.rg.rg_name
  dns_prefix          = var.dns_prefix
  
  node_count          = var.node_count
  vm_size             = var.vm_size
  subnet_id           = module.vnet.subnet_id
  service_cidr = var.service_cidr
  dns_service_ip =var.dns_service_ip
}