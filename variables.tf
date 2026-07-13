variable "app_service_certificate_orders" {
  description = <<EOT
Map of app_service_certificate_orders, attributes below
Required:
    - location
    - name
    - resource_group_name
Optional:
    - auto_renew
    - csr
    - distinguished_name
    - key_size
    - product_type
    - tags
    - validity_in_years
EOT

  type = map(object({
    location            = string
    name                = string
    resource_group_name = string
    auto_renew          = optional(bool)
    csr                 = optional(string)
    distinguished_name  = optional(string)
    key_size            = optional(number)
    product_type        = optional(string)
    tags                = optional(map(string))
    validity_in_years   = optional(number)
  }))
  validation {
    condition = alltrue([
      for k, v in var.app_service_certificate_orders : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.app_service_certificate_orders : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.app_service_certificate_orders : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.app_service_certificate_orders : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.app_service_certificate_orders : (
        v.key_size == null || (v.key_size >= 0)
      )
    ])
    error_message = "must be at least 0"
  }
  validation {
    condition = alltrue([
      for k, v in var.app_service_certificate_orders : (
        v.product_type == null || (contains(["Standard", "WildCard"], v.product_type))
      )
    ])
    error_message = "must be one of: Standard, WildCard"
  }
  validation {
    condition = alltrue([
      for k, v in var.app_service_certificate_orders : (
        v.validity_in_years == null || (v.validity_in_years >= 1 && v.validity_in_years <= 3)
      )
    ])
    error_message = "must be between 1 and 3"
  }
  validation {
    condition = alltrue([
      for k, v in var.app_service_certificate_orders : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

