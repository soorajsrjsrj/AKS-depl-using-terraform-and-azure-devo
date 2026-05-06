terraform {
  backend "azurerm" {
    resource_group_name  = "NCPL"
    storage_account_name = "dev1storagecanadacentral"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"
  }
}