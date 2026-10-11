data "aws_licensemanager_grants" "licensemanager_grants_lookup" {
  for_each = var.licensemanager_grants_lookup

  region = each.value.region

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      values = filter.value.values
    }
  }
}

