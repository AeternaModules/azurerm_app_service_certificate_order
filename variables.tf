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
  # --- Unconfirmed validation candidates, derived from azurerm_app_service_certificate_order's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   condition: length(value) > 0
  #   message:   must not be empty
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
  # path: key_size
  #   condition: value >= 0
  #   message:   must be at least 0
  # path: product_type
  #   condition: contains(["Standard", "WildCard"], value)
  #   message:   must be one of: Standard, WildCard
  # path: validity_in_years
  #   condition: value >= 1 && value <= 3
  #   message:   must be between 1 and 3
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

