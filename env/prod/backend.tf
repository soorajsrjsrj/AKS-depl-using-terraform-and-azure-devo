terraform {
  backend "azurerm" {
    resource_group_name  = "NCPL"
    storage_account_name = "prod1storagecentralus"
    container_name       = "tfstate"
    key                  = "prod.terraform.tfstate"
  }
}