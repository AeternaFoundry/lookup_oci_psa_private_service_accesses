variable "psa_private_service_accesses_lookup" {
  description = <<EOT
Map of psa_private_service_accesses_lookup, attributes below
Optional:
    - compartment_id
    - display_name
    - service_id
    - state
    - vcn_id
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id = optional(string)
    display_name   = optional(string)
    service_id     = optional(string)
    state          = optional(string)
    vcn_id         = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

