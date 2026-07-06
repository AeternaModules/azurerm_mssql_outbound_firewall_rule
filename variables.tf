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
  # --- Unconfirmed validation candidates, derived from azurerm_mssql_outbound_firewall_rule's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: server_id
  #   source:    [from validate.ServerID] !ok
  # path: server_id
  #   source:    [from validate.ServerID] err != nil
}

