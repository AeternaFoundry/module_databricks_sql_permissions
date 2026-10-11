resource "databricks_sql_permissions" "sql_permissions" {
  for_each = var.sql_permissions

  anonymous_function = each.value.anonymous_function
  any_file           = each.value.any_file
  catalog            = each.value.catalog
  cluster_id         = each.value.cluster_id
  database           = each.value.database
  table              = each.value.table
  view               = each.value.view

  dynamic "privilege_assignments" {
    for_each = each.value.privilege_assignments != null ? each.value.privilege_assignments : []
    content {
      principal  = privilege_assignments.value.principal
      privileges = privilege_assignments.value.privileges
    }
  }

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

