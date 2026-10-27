output "one_dashboard_raws_id" {
  description = "Map of id values across all one_dashboard_raws, keyed the same as var.one_dashboard_raws"
  value       = { for k, v in newrelic_one_dashboard_raw.one_dashboard_raws : k => v.id }
}
output "one_dashboard_raws_account_id" {
  description = "Map of account_id values across all one_dashboard_raws, keyed the same as var.one_dashboard_raws"
  value       = { for k, v in newrelic_one_dashboard_raw.one_dashboard_raws : k => v.account_id }
}
output "one_dashboard_raws_description" {
  description = "Map of description values across all one_dashboard_raws, keyed the same as var.one_dashboard_raws"
  value       = { for k, v in newrelic_one_dashboard_raw.one_dashboard_raws : k => v.description }
}
output "one_dashboard_raws_guid" {
  description = "Map of guid values across all one_dashboard_raws, keyed the same as var.one_dashboard_raws"
  value       = { for k, v in newrelic_one_dashboard_raw.one_dashboard_raws : k => v.guid }
}
output "one_dashboard_raws_name" {
  description = "Map of name values across all one_dashboard_raws, keyed the same as var.one_dashboard_raws"
  value       = { for k, v in newrelic_one_dashboard_raw.one_dashboard_raws : k => v.name }
}
output "one_dashboard_raws_page" {
  description = "Map of page values across all one_dashboard_raws, keyed the same as var.one_dashboard_raws"
  value       = { for k, v in newrelic_one_dashboard_raw.one_dashboard_raws : k => v.page }
}
output "one_dashboard_raws_permalink" {
  description = "Map of permalink values across all one_dashboard_raws, keyed the same as var.one_dashboard_raws"
  value       = { for k, v in newrelic_one_dashboard_raw.one_dashboard_raws : k => v.permalink }
}
output "one_dashboard_raws_permissions" {
  description = "Map of permissions values across all one_dashboard_raws, keyed the same as var.one_dashboard_raws"
  value       = { for k, v in newrelic_one_dashboard_raw.one_dashboard_raws : k => v.permissions }
}

