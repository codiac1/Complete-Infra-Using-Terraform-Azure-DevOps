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


  service_principal {
    client_id     = data.azurerm_key_vault_secret.client_id_secret.value
    client_secret = data.azurerm_key_vault_secret.client_secret_secret.value
  }

  tags = {
    environment = var.tag
  }
}
