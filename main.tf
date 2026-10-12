resource "tfe_hyok_configuration" "hyok_configurations" {
  for_each = var.hyok_configurations

  agent_pool_id           = each.value.agent_pool_id
  kek_id                  = each.value.kek_id
  name                    = each.value.name
  oidc_configuration_id   = each.value.oidc_configuration_id
  oidc_configuration_type = each.value.oidc_configuration_type
  organization            = each.value.organization

  dynamic "kms_options" {
    for_each = each.value.kms_options != null ? each.value.kms_options : []
    content {
      key_location = kms_options.value.key_location
      key_region   = kms_options.value.key_region
      key_ring_id  = kms_options.value.key_ring_id
      multi_region = kms_options.value.multi_region
    }
  }
}

