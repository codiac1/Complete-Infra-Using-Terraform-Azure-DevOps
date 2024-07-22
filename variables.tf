variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The Azure location where the resources will be deployed"
  type        = string
  default     = "Central India"
}

variable "cluster_name" {
  description = "The name of the AKS cluster"
  type        = string
}

variable "dns_prefix" {
  description = "The DNS prefix for the AKS cluster"
  type        = string
}

variable "node_count" {
  description = "The number of nodes in the default node pool"
  type        = number
  default     = 1
}

variable "vm_size" {
  description = "The size of the virtual machines in the default node pool"
  type        = string
  default     = "Standard_B2s"
}

variable "key_vault_name" {
  description = "The name of the Azure key vault"
  type        = string
}

variable "client_id" {

}

variable "client_secret" {

}

variable "tag" {
  default = "Training"
}

