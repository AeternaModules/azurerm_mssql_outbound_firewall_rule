variable "mssql_outbound_firewall_rules" {
  description = <<EOT
Map of mssql_outbound_firewall_rules, attributes below
Required:
    - name
    - server_id
EOT

  type = map(object({
    name      = string
    server_id = string
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

