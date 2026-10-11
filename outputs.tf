output "one_dashboard_raws_id" {
  description = "Map of id values across all one_dashboard_raws, keyed the same as var.one_dashboard_raws except keys with no id are omitted"
  value       = { for k, v in newrelic_one_dashboard_raw.one_dashboard_raws : k => v.id if v.id != null && length(v.id) > 0 }
}
output "one_dashboard_raws_account_id" {
  description = "Map of account_id values across all one_dashboard_raws, keyed the same as var.one_dashboard_raws except keys with no account_id are omitted"
  value       = { for k, v in newrelic_one_dashboard_raw.one_dashboard_raws : k => v.account_id if v.account_id != null }
}
output "one_dashboard_raws_description" {
  description = "Map of description values across all one_dashboard_raws, keyed the same as var.one_dashboard_raws except keys with no description are omitted"
  value       = { for k, v in newrelic_one_dashboard_raw.one_dashboard_raws : k => v.description if v.description != null && length(v.description) > 0 }
}
output "one_dashboard_raws_guid" {
  description = "Map of guid values across all one_dashboard_raws, keyed the same as var.one_dashboard_raws except keys with no guid are omitted"
  value       = { for k, v in newrelic_one_dashboard_raw.one_dashboard_raws : k => v.guid if v.guid != null && length(v.guid) > 0 }
}
output "one_dashboard_raws_name" {
  description = "Map of name values across all one_dashboard_raws, keyed the same as var.one_dashboard_raws except keys with no name are omitted"
  value       = { for k, v in newrelic_one_dashboard_raw.one_dashboard_raws : k => v.name if v.name != null && length(v.name) > 0 }
}
output "one_dashboard_raws_page" {
  description = "Map of page values across all one_dashboard_raws, keyed the same as var.one_dashboard_raws except keys with no page are omitted"
  value       = { for k, v in newrelic_one_dashboard_raw.one_dashboard_raws : k => v.page if v.page != null && length(v.page) > 0 }
}
output "one_dashboard_raws_permalink" {
  description = "Map of permalink values across all one_dashboard_raws, keyed the same as var.one_dashboard_raws except keys with no permalink are omitted"
  value       = { for k, v in newrelic_one_dashboard_raw.one_dashboard_raws : k => v.permalink if v.permalink != null && length(v.permalink) > 0 }
}
output "one_dashboard_raws_permissions" {
  description = "Map of permissions values across all one_dashboard_raws, keyed the same as var.one_dashboard_raws except keys with no permissions are omitted"
  value       = { for k, v in newrelic_one_dashboard_raw.one_dashboard_raws : k => v.permissions if v.permissions != null && length(v.permissions) > 0 }
}

