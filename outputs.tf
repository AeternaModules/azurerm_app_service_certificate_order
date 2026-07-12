output "app_service_certificate_orders_app_service_certificate_not_renewable_reasons" {
  description = "Map of app_service_certificate_not_renewable_reasons values across all app_service_certificate_orders, keyed the same as var.app_service_certificate_orders"
  value       = { for k, v in azurerm_app_service_certificate_order.app_service_certificate_orders : k => v.app_service_certificate_not_renewable_reasons }
}
output "app_service_certificate_orders_auto_renew" {
  description = "Map of auto_renew values across all app_service_certificate_orders, keyed the same as var.app_service_certificate_orders"
  value       = { for k, v in azurerm_app_service_certificate_order.app_service_certificate_orders : k => v.auto_renew }
}
output "app_service_certificate_orders_certificates" {
  description = "Map of certificates values across all app_service_certificate_orders, keyed the same as var.app_service_certificate_orders"
  value       = { for k, v in azurerm_app_service_certificate_order.app_service_certificate_orders : k => v.certificates }
}
output "app_service_certificate_orders_csr" {
  description = "Map of csr values across all app_service_certificate_orders, keyed the same as var.app_service_certificate_orders"
  value       = { for k, v in azurerm_app_service_certificate_order.app_service_certificate_orders : k => v.csr }
}
output "app_service_certificate_orders_distinguished_name" {
  description = "Map of distinguished_name values across all app_service_certificate_orders, keyed the same as var.app_service_certificate_orders"
  value       = { for k, v in azurerm_app_service_certificate_order.app_service_certificate_orders : k => v.distinguished_name }
}
output "app_service_certificate_orders_domain_verification_token" {
  description = "Map of domain_verification_token values across all app_service_certificate_orders, keyed the same as var.app_service_certificate_orders"
  value       = { for k, v in azurerm_app_service_certificate_order.app_service_certificate_orders : k => v.domain_verification_token }
}
output "app_service_certificate_orders_expiration_time" {
  description = "Map of expiration_time values across all app_service_certificate_orders, keyed the same as var.app_service_certificate_orders"
  value       = { for k, v in azurerm_app_service_certificate_order.app_service_certificate_orders : k => v.expiration_time }
}
output "app_service_certificate_orders_intermediate_thumbprint" {
  description = "Map of intermediate_thumbprint values across all app_service_certificate_orders, keyed the same as var.app_service_certificate_orders"
  value       = { for k, v in azurerm_app_service_certificate_order.app_service_certificate_orders : k => v.intermediate_thumbprint }
}
output "app_service_certificate_orders_is_private_key_external" {
  description = "Map of is_private_key_external values across all app_service_certificate_orders, keyed the same as var.app_service_certificate_orders"
  value       = { for k, v in azurerm_app_service_certificate_order.app_service_certificate_orders : k => v.is_private_key_external }
}
output "app_service_certificate_orders_key_size" {
  description = "Map of key_size values across all app_service_certificate_orders, keyed the same as var.app_service_certificate_orders"
  value       = { for k, v in azurerm_app_service_certificate_order.app_service_certificate_orders : k => v.key_size }
}
output "app_service_certificate_orders_location" {
  description = "Map of location values across all app_service_certificate_orders, keyed the same as var.app_service_certificate_orders"
  value       = { for k, v in azurerm_app_service_certificate_order.app_service_certificate_orders : k => v.location }
}
output "app_service_certificate_orders_name" {
  description = "Map of name values across all app_service_certificate_orders, keyed the same as var.app_service_certificate_orders"
  value       = { for k, v in azurerm_app_service_certificate_order.app_service_certificate_orders : k => v.name }
}
output "app_service_certificate_orders_product_type" {
  description = "Map of product_type values across all app_service_certificate_orders, keyed the same as var.app_service_certificate_orders"
  value       = { for k, v in azurerm_app_service_certificate_order.app_service_certificate_orders : k => v.product_type }
}
output "app_service_certificate_orders_resource_group_name" {
  description = "Map of resource_group_name values across all app_service_certificate_orders, keyed the same as var.app_service_certificate_orders"
  value       = { for k, v in azurerm_app_service_certificate_order.app_service_certificate_orders : k => v.resource_group_name }
}
output "app_service_certificate_orders_root_thumbprint" {
  description = "Map of root_thumbprint values across all app_service_certificate_orders, keyed the same as var.app_service_certificate_orders"
  value       = { for k, v in azurerm_app_service_certificate_order.app_service_certificate_orders : k => v.root_thumbprint }
}
output "app_service_certificate_orders_signed_certificate_thumbprint" {
  description = "Map of signed_certificate_thumbprint values across all app_service_certificate_orders, keyed the same as var.app_service_certificate_orders"
  value       = { for k, v in azurerm_app_service_certificate_order.app_service_certificate_orders : k => v.signed_certificate_thumbprint }
}
output "app_service_certificate_orders_status" {
  description = "Map of status values across all app_service_certificate_orders, keyed the same as var.app_service_certificate_orders"
  value       = { for k, v in azurerm_app_service_certificate_order.app_service_certificate_orders : k => v.status }
}
output "app_service_certificate_orders_tags" {
  description = "Map of tags values across all app_service_certificate_orders, keyed the same as var.app_service_certificate_orders"
  value       = { for k, v in azurerm_app_service_certificate_order.app_service_certificate_orders : k => v.tags }
}
output "app_service_certificate_orders_validity_in_years" {
  description = "Map of validity_in_years values across all app_service_certificate_orders, keyed the same as var.app_service_certificate_orders"
  value       = { for k, v in azurerm_app_service_certificate_order.app_service_certificate_orders : k => v.validity_in_years }
}

