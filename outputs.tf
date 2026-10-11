output "licensemanager_grants_lookup_id" {
  description = "Map of id values across all licensemanager_grants_lookup, keyed the same as var.licensemanager_grants_lookup"
  value       = { for k, v in data.aws_licensemanager_grants.licensemanager_grants_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "licensemanager_grants_lookup_arns" {
  description = "Map of arns values across all licensemanager_grants_lookup, keyed the same as var.licensemanager_grants_lookup"
  value       = { for k, v in data.aws_licensemanager_grants.licensemanager_grants_lookup : k => v.arns if v.arns != null && length(v.arns) > 0 }
}
output "licensemanager_grants_lookup_filter" {
  description = "Map of filter values across all licensemanager_grants_lookup, keyed the same as var.licensemanager_grants_lookup"
  value       = { for k, v in data.aws_licensemanager_grants.licensemanager_grants_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "licensemanager_grants_lookup_region" {
  description = "Map of region values across all licensemanager_grants_lookup, keyed the same as var.licensemanager_grants_lookup"
  value       = { for k, v in data.aws_licensemanager_grants.licensemanager_grants_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}

