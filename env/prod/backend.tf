terraform {
  backend "azurerm" {
    resource_group_name  = "NCPL"
    storage_account_name = "prod1storagecentralu1"
    container_name       = "tfstate"
    key                  = "prod.terraform.tfstate"
  }
}