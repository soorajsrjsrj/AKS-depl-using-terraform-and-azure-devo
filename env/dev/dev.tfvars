rg_name            = "dev-rg"
location           = "Canada Central"
vnet_name          = "dev-vnet"
subnet_name        = "aks-subnet"
aks_name           = "dev-aks-cluster"
dns_prefix         = "devaks"

node_count         = 1
vm_size            = "Standard_D2s_v3"
service_cidr       = "10.3.0.0/16"
dns_service_ip     = "10.3.0.10"
vnet_address_space      = ["10.0.0.0/16"]
subnet_address_prefixes = ["10.0.1.0/24"]