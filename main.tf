resource "azurerm_resource_group" "rg" {
  name     = "${local.resource_prefix}-rg"
  location = var.location

  tags = local.common_tags
}

resource "azurerm_key_vault" "kv" {
  name                        = "${local.resource_prefix}-12345"
  location                    = azurerm_resource_group.rg.location
  resource_group_name         = azurerm_resource_group.rg.name
  sku_name                    = "standard"
  tenant_id = data.azurerm_client_config.current.tenant_id

  soft_delete_retention_days = 7
  purge_protection_enabled   = false

  tags = local.common_tags
}

# =========================
# SQL SERVER
# =========================

resource "azurerm_mssql_server" "sqlserver" {

  name                         = "${local.resource_prefix}-sqlserver"
  resource_group_name          = azurerm_resource_group.rg.name
  location                     = azurerm_resource_group.rg.location
  version                      = "12.0"

  administrator_login          = var.sql_admin_username
  administrator_login_password = var.sql_admin_password

  minimum_tls_version = "1.2"

  tags = local.common_tags
}

# =========================
# SQL DATABASE
# =========================

resource "azurerm_mssql_database" "sqldb" {

  name      = "${local.resource_prefix}-db"

  server_id = azurerm_mssql_server.sqlserver[0].id

  sku_name  = "Basic"

  tags = local.common_tags
}