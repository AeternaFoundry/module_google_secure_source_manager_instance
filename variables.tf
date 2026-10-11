variable "secure_source_manager_instances" {
  description = <<EOT
Map of secure_source_manager_instances, attributes below
Required:
    - instance_id
    - location
Optional:
    - deletion_policy
    - kms_key
    - labels
    - project
    - private_config (block):
        - ca_pool (optional)
        - custom_host_config (optional, block):
            - api (required)
            - git_http (required)
            - git_ssh (required)
            - html (required)
        - is_private (required)
        - psc_allowed_projects (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
    - workforce_identity_federation_config (block):
        - enabled (required)
EOT

  type = map(object({
    instance_id     = string
    location        = string
    deletion_policy = optional(string)
    kms_key         = optional(string)
    labels          = optional(map(string))
    project         = optional(string)
    private_config = optional(object({
      ca_pool = optional(string)
      custom_host_config = optional(object({
        api      = string
        git_http = string
        git_ssh  = string
        html     = string
      }))
      is_private           = bool
      psc_allowed_projects = optional(list(string))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
    workforce_identity_federation_config = optional(object({
      enabled = bool
    }))
  }))
}

