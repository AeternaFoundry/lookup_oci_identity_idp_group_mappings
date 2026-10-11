variable "identity_idp_group_mappings_lookup" {
  description = <<EOT
Map of identity_idp_group_mappings_lookup, attributes below
Required:
    - identity_provider_id
Optional:
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    identity_provider_id = string
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

