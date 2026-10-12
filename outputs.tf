output "hyok_configurations_id" {
  description = "Map of id values across all hyok_configurations, keyed the same as var.hyok_configurations except keys with no id are omitted"
  value       = { for k, v in tfe_hyok_configuration.hyok_configurations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "hyok_configurations_agent_pool_id" {
  description = "Map of agent_pool_id values across all hyok_configurations, keyed the same as var.hyok_configurations except keys with no agent_pool_id are omitted"
  value       = { for k, v in tfe_hyok_configuration.hyok_configurations : k => v.agent_pool_id if v.agent_pool_id != null && length(v.agent_pool_id) > 0 }
}
output "hyok_configurations_kek_id" {
  description = "Map of kek_id values across all hyok_configurations, keyed the same as var.hyok_configurations except keys with no kek_id are omitted"
  value       = { for k, v in tfe_hyok_configuration.hyok_configurations : k => v.kek_id if v.kek_id != null && length(v.kek_id) > 0 }
}
output "hyok_configurations_kms_options" {
  description = "Map of kms_options values across all hyok_configurations, keyed the same as var.hyok_configurations except keys with no kms_options are omitted"
  value       = { for k, v in tfe_hyok_configuration.hyok_configurations : k => v.kms_options if v.kms_options != null && length(v.kms_options) > 0 }
}
output "hyok_configurations_name" {
  description = "Map of name values across all hyok_configurations, keyed the same as var.hyok_configurations except keys with no name are omitted"
  value       = { for k, v in tfe_hyok_configuration.hyok_configurations : k => v.name if v.name != null && length(v.name) > 0 }
}
output "hyok_configurations_oidc_configuration_id" {
  description = "Map of oidc_configuration_id values across all hyok_configurations, keyed the same as var.hyok_configurations except keys with no oidc_configuration_id are omitted"
  value       = { for k, v in tfe_hyok_configuration.hyok_configurations : k => v.oidc_configuration_id if v.oidc_configuration_id != null && length(v.oidc_configuration_id) > 0 }
}
output "hyok_configurations_oidc_configuration_type" {
  description = "Map of oidc_configuration_type values across all hyok_configurations, keyed the same as var.hyok_configurations except keys with no oidc_configuration_type are omitted"
  value       = { for k, v in tfe_hyok_configuration.hyok_configurations : k => v.oidc_configuration_type if v.oidc_configuration_type != null && length(v.oidc_configuration_type) > 0 }
}
output "hyok_configurations_organization" {
  description = "Map of organization values across all hyok_configurations, keyed the same as var.hyok_configurations except keys with no organization are omitted"
  value       = { for k, v in tfe_hyok_configuration.hyok_configurations : k => v.organization if v.organization != null && length(v.organization) > 0 }
}

