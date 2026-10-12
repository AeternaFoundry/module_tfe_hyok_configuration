variable "hyok_configurations" {
  description = <<EOT
Map of hyok_configurations, attributes below
Required:
    - agent_pool_id
    - kek_id
    - name
    - oidc_configuration_id
    - oidc_configuration_type
Optional:
    - organization
    - kms_options (block):
        - key_location (optional)
        - key_region (optional)
        - key_ring_id (optional)
        - multi_region (optional)
EOT

  type = map(object({
    agent_pool_id           = string
    kek_id                  = string
    name                    = string
    oidc_configuration_id   = string
    oidc_configuration_type = string
    organization            = optional(string)
    kms_options = optional(list(object({
      key_location = optional(string)
      key_region   = optional(string)
      key_ring_id  = optional(string)
      multi_region = optional(bool)
    })))
  }))
}

