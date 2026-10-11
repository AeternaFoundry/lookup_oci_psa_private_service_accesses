data "oci_psa_private_service_accesses" "psa_private_service_accesses_lookup" {
  for_each = var.psa_private_service_accesses_lookup

  compartment_id = each.value.compartment_id
  display_name   = each.value.display_name
  service_id     = each.value.service_id
  state          = each.value.state
  vcn_id         = each.value.vcn_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

