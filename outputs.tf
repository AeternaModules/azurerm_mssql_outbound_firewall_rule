output "mssql_outbound_firewall_rules_id" {
  description = "Map of id values across all mssql_outbound_firewall_rules, keyed the same as var.mssql_outbound_firewall_rules"
  value       = { for k, v in azurerm_mssql_outbound_firewall_rule.mssql_outbound_firewall_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "mssql_outbound_firewall_rules_name" {
  description = "Map of name values across all mssql_outbound_firewall_rules, keyed the same as var.mssql_outbound_firewall_rules"
  value       = { for k, v in azurerm_mssql_outbound_firewall_rule.mssql_outbound_firewall_rules : k => v.name if v.name != null && length(v.name) > 0 }
}
output "mssql_outbound_firewall_rules_server_id" {
  description = "Map of server_id values across all mssql_outbound_firewall_rules, keyed the same as var.mssql_outbound_firewall_rules"
  value       = { for k, v in azurerm_mssql_outbound_firewall_rule.mssql_outbound_firewall_rules : k => v.server_id if v.server_id != null && length(v.server_id) > 0 }
}

