terraform {
  backend "azurerm" {
    resource_group_name  = "rg-tfstate"
    storage_account_name = "devopstfstate123"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
