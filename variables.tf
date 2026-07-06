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
    auto_renew          = optional(bool) # Default: true
    csr                 = optional(string)
    distinguished_name  = optional(string)
    key_size            = optional(number) # Default: 2048
    product_type        = optional(string) # Default: "Standard"
    tags                = optional(map(string))
    validity_in_years   = optional(number) # Default: 1
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
  # --- Unconfirmed validation candidates, derived from azurerm_app_service_certificate_order's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}

