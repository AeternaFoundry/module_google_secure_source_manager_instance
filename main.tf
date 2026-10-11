resource "google_secure_source_manager_instance" "secure_source_manager_instances" {
  for_each = var.secure_source_manager_instances

  instance_id     = each.value.instance_id
  location        = each.value.location
  deletion_policy = each.value.deletion_policy
  kms_key         = each.value.kms_key
  labels          = each.value.labels
  project         = each.value.project

  dynamic "private_config" {
    for_each = each.value.private_config != null ? [each.value.private_config] : []
    content {
      ca_pool = private_config.value.ca_pool
      dynamic "custom_host_config" {
        for_each = private_config.value.custom_host_config != null ? [private_config.value.custom_host_config] : []
        content {
          api      = custom_host_config.value.api
          git_http = custom_host_config.value.git_http
          git_ssh  = custom_host_config.value.git_ssh
          html     = custom_host_config.value.html
        }
      }
      is_private           = private_config.value.is_private
      psc_allowed_projects = private_config.value.psc_allowed_projects
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }

  dynamic "workforce_identity_federation_config" {
    for_each = each.value.workforce_identity_federation_config != null ? [each.value.workforce_identity_federation_config] : []
    content {
      enabled = workforce_identity_federation_config.value.enabled
    }
  }
}

