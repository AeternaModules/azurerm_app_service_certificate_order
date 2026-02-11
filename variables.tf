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
}

