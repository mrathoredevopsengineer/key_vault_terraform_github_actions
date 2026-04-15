resource "azurerm_resource_group" "rg" {
  name     = "${local.resource_prefix}-rg"
  location = var.location

  tags = local.common_tags
}

resource "azurerm_key_vault" "kv" {
  name                        = "${local.resource_prefix}-12345"
  location                    = azurerm_resource_group.rg.location
  resource_group_name         = azurerm_resource_group.rg.name
  tenant_id                   = var.tenant_id
  sku_name                    = "standard"

  soft_delete_retention_days = 7
  purge_protection_enabled   = false

  tags = local.common_tags
}