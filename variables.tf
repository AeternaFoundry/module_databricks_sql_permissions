variable "sql_permissions" {
  description = <<EOT
Map of sql_permissions, attributes below
Optional:
    - anonymous_function
    - any_file
    - catalog
    - cluster_id
    - database
    - table
    - view
    - privilege_assignments (block):
        - principal (required)
        - privileges (required)
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    anonymous_function = optional(bool)
    any_file           = optional(bool)
    catalog            = optional(bool)
    cluster_id         = optional(string)
    database           = optional(string)
    table              = optional(string)
    view               = optional(string)
    privilege_assignments = optional(list(object({
      principal  = string
      privileges = set(string)
    })))
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

