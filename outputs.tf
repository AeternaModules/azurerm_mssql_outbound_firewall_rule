output "mssql_outbound_firewall_rules_name" {
  description = "Map of name values across all mssql_outbound_firewall_rules, keyed the same as var.mssql_outbound_firewall_rules"
  value       = { for k, v in azurerm_mssql_outbound_firewall_rule.mssql_outbound_firewall_rules : k => v.name }
}
output "mssql_outbound_firewall_rules_server_id" {
  description = "Map of server_id values across all mssql_outbound_firewall_rules, keyed the same as var.mssql_outbound_firewall_rules"
  value       = { for k, v in azurerm_mssql_outbound_firewall_rule.mssql_outbound_firewall_rules : k => v.server_id }
}

