variable "licensemanager_grants_lookup" {
  description = <<EOT
Map of licensemanager_grants_lookup, attributes below
Optional:
    - region
    - filter (block):
        - name (required)
        - values (required)
EOT

  type = map(object({
    region = optional(string)
    filter = optional(list(object({
      name   = string
      values = set(string)
    })))
  }))
}

