output "identity_idp_group_mappings_lookup_id" {
  description = "Map of id values across all identity_idp_group_mappings_lookup, keyed the same as var.identity_idp_group_mappings_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_identity_idp_group_mappings.identity_idp_group_mappings_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "identity_idp_group_mappings_lookup_filter" {
  description = "Map of filter values across all identity_idp_group_mappings_lookup, keyed the same as var.identity_idp_group_mappings_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_identity_idp_group_mappings.identity_idp_group_mappings_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "identity_idp_group_mappings_lookup_identity_provider_id" {
  description = "Map of identity_provider_id values across all identity_idp_group_mappings_lookup, keyed the same as var.identity_idp_group_mappings_lookup except keys with no identity_provider_id are omitted"
  value       = { for k, v in data.oci_identity_idp_group_mappings.identity_idp_group_mappings_lookup : k => v.identity_provider_id if v.identity_provider_id != null && length(v.identity_provider_id) > 0 }
}
output "identity_idp_group_mappings_lookup_idp_group_mappings" {
  description = "Map of idp_group_mappings values across all identity_idp_group_mappings_lookup, keyed the same as var.identity_idp_group_mappings_lookup except keys with no idp_group_mappings are omitted"
  value       = { for k, v in data.oci_identity_idp_group_mappings.identity_idp_group_mappings_lookup : k => v.idp_group_mappings if v.idp_group_mappings != null && length(v.idp_group_mappings) > 0 }
}

