output "resource_group_name" {
  description = "The name of the resource group"
  value       = azurerm_resource_group.aks-rg[0].name
}

output "aks_cluster_name" {
  description = "The name of the AKS cluster"
  value       = azurerm_kubernetes_cluster.aks.name
}

output "aks_cluster_location" {
  description = "The location of the AKS cluster"
  value       = azurerm_kubernetes_cluster.aks.location
}

output "kubeconfig" {
  description = "The kubeconfig to use to access the AKS cluster"
  value       = azurerm_kubernetes_cluster.aks.kube_config_raw
  sensitive   = true
}

output "node_resource_group" {
  description = "The resource group containing AKS node resources"
  value       = azurerm_kubernetes_cluster.aks.node_resource_group
}
