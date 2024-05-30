terraform {
  backend "azurerm" {
    resource_group_name  = "pranavtripathi"
    storage_account_name = "aksterraformassignment"
    container_name       = "aks-tfstate"
    key                  = "aks-cluster.tfstate"
  }
}
