data "azurerm_resource_group" "aks-rg" {
  name = var.resource_group_name
}

data "azurerm_key_vault" "aks-KV" {
  name                = var.key_vault_name
  resource_group_name = var.resource_group_name
}

data "azurerm_key_vault_secret" "client_id_secret" {
  name         = var.client_id
  key_vault_id = data.azurerm_key_vault.aks-KV.id
}

data "azurerm_key_vault_secret" "client_secret_secret" {
  name         = var.client_secret
  key_vault_id = data.azurerm_key_vault.aks-KV.id
}
