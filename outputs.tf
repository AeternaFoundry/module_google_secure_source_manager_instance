output "secure_source_manager_instances_id" {
  description = "Map of id values across all secure_source_manager_instances, keyed the same as var.secure_source_manager_instances except keys with no id are omitted"
  value       = { for k, v in google_secure_source_manager_instance.secure_source_manager_instances : k => v.id if v.id != null && length(v.id) > 0 }
}
output "secure_source_manager_instances_create_time" {
  description = "Map of create_time values across all secure_source_manager_instances, keyed the same as var.secure_source_manager_instances except keys with no create_time are omitted"
  value       = { for k, v in google_secure_source_manager_instance.secure_source_manager_instances : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "secure_source_manager_instances_deletion_policy" {
  description = "Map of deletion_policy values across all secure_source_manager_instances, keyed the same as var.secure_source_manager_instances except keys with no deletion_policy are omitted"
  value       = { for k, v in google_secure_source_manager_instance.secure_source_manager_instances : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "secure_source_manager_instances_effective_labels" {
  description = "Map of effective_labels values across all secure_source_manager_instances, keyed the same as var.secure_source_manager_instances except keys with no effective_labels are omitted"
  value       = { for k, v in google_secure_source_manager_instance.secure_source_manager_instances : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "secure_source_manager_instances_host_config" {
  description = "Map of host_config values across all secure_source_manager_instances, keyed the same as var.secure_source_manager_instances except keys with no host_config are omitted"
  value       = { for k, v in google_secure_source_manager_instance.secure_source_manager_instances : k => v.host_config if v.host_config != null && length(v.host_config) > 0 }
}
output "secure_source_manager_instances_instance_id" {
  description = "Map of instance_id values across all secure_source_manager_instances, keyed the same as var.secure_source_manager_instances except keys with no instance_id are omitted"
  value       = { for k, v in google_secure_source_manager_instance.secure_source_manager_instances : k => v.instance_id if v.instance_id != null && length(v.instance_id) > 0 }
}
output "secure_source_manager_instances_kms_key" {
  description = "Map of kms_key values across all secure_source_manager_instances, keyed the same as var.secure_source_manager_instances except keys with no kms_key are omitted"
  value       = { for k, v in google_secure_source_manager_instance.secure_source_manager_instances : k => v.kms_key if v.kms_key != null && length(v.kms_key) > 0 }
}
output "secure_source_manager_instances_labels" {
  description = "Map of labels values across all secure_source_manager_instances, keyed the same as var.secure_source_manager_instances except keys with no labels are omitted"
  value       = { for k, v in google_secure_source_manager_instance.secure_source_manager_instances : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "secure_source_manager_instances_location" {
  description = "Map of location values across all secure_source_manager_instances, keyed the same as var.secure_source_manager_instances except keys with no location are omitted"
  value       = { for k, v in google_secure_source_manager_instance.secure_source_manager_instances : k => v.location if v.location != null && length(v.location) > 0 }
}
output "secure_source_manager_instances_name" {
  description = "Map of name values across all secure_source_manager_instances, keyed the same as var.secure_source_manager_instances except keys with no name are omitted"
  value       = { for k, v in google_secure_source_manager_instance.secure_source_manager_instances : k => v.name if v.name != null && length(v.name) > 0 }
}
output "secure_source_manager_instances_private_config" {
  description = "Map of private_config values across all secure_source_manager_instances, keyed the same as var.secure_source_manager_instances except keys with no private_config are omitted"
  value       = { for k, v in google_secure_source_manager_instance.secure_source_manager_instances : k => one(v.private_config) if v.private_config != null && length(v.private_config) > 0 }
}
output "secure_source_manager_instances_project" {
  description = "Map of project values across all secure_source_manager_instances, keyed the same as var.secure_source_manager_instances except keys with no project are omitted"
  value       = { for k, v in google_secure_source_manager_instance.secure_source_manager_instances : k => v.project if v.project != null && length(v.project) > 0 }
}
output "secure_source_manager_instances_state" {
  description = "Map of state values across all secure_source_manager_instances, keyed the same as var.secure_source_manager_instances except keys with no state are omitted"
  value       = { for k, v in google_secure_source_manager_instance.secure_source_manager_instances : k => v.state if v.state != null && length(v.state) > 0 }
}
output "secure_source_manager_instances_state_note" {
  description = "Map of state_note values across all secure_source_manager_instances, keyed the same as var.secure_source_manager_instances except keys with no state_note are omitted"
  value       = { for k, v in google_secure_source_manager_instance.secure_source_manager_instances : k => v.state_note if v.state_note != null && length(v.state_note) > 0 }
}
output "secure_source_manager_instances_terraform_labels" {
  description = "Map of terraform_labels values across all secure_source_manager_instances, keyed the same as var.secure_source_manager_instances except keys with no terraform_labels are omitted"
  value       = { for k, v in google_secure_source_manager_instance.secure_source_manager_instances : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}
output "secure_source_manager_instances_update_time" {
  description = "Map of update_time values across all secure_source_manager_instances, keyed the same as var.secure_source_manager_instances except keys with no update_time are omitted"
  value       = { for k, v in google_secure_source_manager_instance.secure_source_manager_instances : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}
output "secure_source_manager_instances_workforce_identity_federation_config" {
  description = "Map of workforce_identity_federation_config values across all secure_source_manager_instances, keyed the same as var.secure_source_manager_instances except keys with no workforce_identity_federation_config are omitted"
  value       = { for k, v in google_secure_source_manager_instance.secure_source_manager_instances : k => one(v.workforce_identity_federation_config) if v.workforce_identity_federation_config != null && length(v.workforce_identity_federation_config) > 0 }
}

