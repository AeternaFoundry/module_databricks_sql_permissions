output "sql_permissions_id" {
  description = "Map of id values across all sql_permissions, keyed the same as var.sql_permissions except keys with no id are omitted"
  value       = { for k, v in databricks_sql_permissions.sql_permissions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "sql_permissions_anonymous_function" {
  description = "Map of anonymous_function values across all sql_permissions, keyed the same as var.sql_permissions except keys with no anonymous_function are omitted"
  value       = { for k, v in databricks_sql_permissions.sql_permissions : k => v.anonymous_function if v.anonymous_function != null }
}
output "sql_permissions_any_file" {
  description = "Map of any_file values across all sql_permissions, keyed the same as var.sql_permissions except keys with no any_file are omitted"
  value       = { for k, v in databricks_sql_permissions.sql_permissions : k => v.any_file if v.any_file != null }
}
output "sql_permissions_catalog" {
  description = "Map of catalog values across all sql_permissions, keyed the same as var.sql_permissions except keys with no catalog are omitted"
  value       = { for k, v in databricks_sql_permissions.sql_permissions : k => v.catalog if v.catalog != null }
}
output "sql_permissions_cluster_id" {
  description = "Map of cluster_id values across all sql_permissions, keyed the same as var.sql_permissions except keys with no cluster_id are omitted"
  value       = { for k, v in databricks_sql_permissions.sql_permissions : k => v.cluster_id if v.cluster_id != null && length(v.cluster_id) > 0 }
}
output "sql_permissions_database" {
  description = "Map of database values across all sql_permissions, keyed the same as var.sql_permissions except keys with no database are omitted"
  value       = { for k, v in databricks_sql_permissions.sql_permissions : k => v.database if v.database != null && length(v.database) > 0 }
}
output "sql_permissions_privilege_assignments" {
  description = "Map of privilege_assignments values across all sql_permissions, keyed the same as var.sql_permissions except keys with no privilege_assignments are omitted"
  value       = { for k, v in databricks_sql_permissions.sql_permissions : k => v.privilege_assignments if v.privilege_assignments != null && length(v.privilege_assignments) > 0 }
}
output "sql_permissions_provider_config" {
  description = "Map of provider_config values across all sql_permissions, keyed the same as var.sql_permissions except keys with no provider_config are omitted"
  value       = { for k, v in databricks_sql_permissions.sql_permissions : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "sql_permissions_table" {
  description = "Map of table values across all sql_permissions, keyed the same as var.sql_permissions except keys with no table are omitted"
  value       = { for k, v in databricks_sql_permissions.sql_permissions : k => v.table if v.table != null && length(v.table) > 0 }
}
output "sql_permissions_view" {
  description = "Map of view values across all sql_permissions, keyed the same as var.sql_permissions except keys with no view are omitted"
  value       = { for k, v in databricks_sql_permissions.sql_permissions : k => v.view if v.view != null && length(v.view) > 0 }
}

