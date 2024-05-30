# Data source to check if the resource group already exists
data "azurerm_resource_group" "existing-rg" {
  name = var.resource_group_name
}

# Conditionally create the resource group if it doesn't exist
resource "azurerm_resource_group" "aks-rg" {
  count    = length(data.azurerm_resource_group.existing-rg) == 0 ? 1 : 0
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.cluster_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix

  default_node_pool {
    name       = "default"
    node_count = var.node_count
    vm_size    = var.vm_size
  }

  network_profile {
    network_plugin = "azure"
    network_policy = "azure"
  }

  role_based_access_control_enabled = true

  tags = {
    environment = var.tag
  }
}
