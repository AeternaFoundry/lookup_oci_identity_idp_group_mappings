data "oci_identity_idp_group_mappings" "identity_idp_group_mappings_lookup" {
  for_each = var.identity_idp_group_mappings_lookup

  identity_provider_id = each.value.identity_provider_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

