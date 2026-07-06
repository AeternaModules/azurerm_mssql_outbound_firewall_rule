output "mssql_outbound_firewall_rules" {
  description = "All mssql_outbound_firewall_rule resources"
  value       = azurerm_mssql_outbound_firewall_rule.mssql_outbound_firewall_rules
}
output "mssql_outbound_firewall_rules_name" {
  description = "List of name values across all mssql_outbound_firewall_rules"
  value       = [for k, v in azurerm_mssql_outbound_firewall_rule.mssql_outbound_firewall_rules : v.name]
}
output "mssql_outbound_firewall_rules_server_id" {
  description = "List of server_id values across all mssql_outbound_firewall_rules"
  value       = [for k, v in azurerm_mssql_outbound_firewall_rule.mssql_outbound_firewall_rules : v.server_id]
}

