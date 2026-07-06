output "app_service_certificate_orders" {
  description = "All app_service_certificate_order resources"
  value       = azurerm_app_service_certificate_order.app_service_certificate_orders
}
output "app_service_certificate_orders_app_service_certificate_not_renewable_reasons" {
  description = "List of app_service_certificate_not_renewable_reasons values across all app_service_certificate_orders"
  value       = [for k, v in azurerm_app_service_certificate_order.app_service_certificate_orders : v.app_service_certificate_not_renewable_reasons]
}
output "app_service_certificate_orders_auto_renew" {
  description = "List of auto_renew values across all app_service_certificate_orders"
  value       = [for k, v in azurerm_app_service_certificate_order.app_service_certificate_orders : v.auto_renew]
}
output "app_service_certificate_orders_certificates" {
  description = "List of certificates values across all app_service_certificate_orders"
  value       = [for k, v in azurerm_app_service_certificate_order.app_service_certificate_orders : v.certificates]
}
output "app_service_certificate_orders_csr" {
  description = "List of csr values across all app_service_certificate_orders"
  value       = [for k, v in azurerm_app_service_certificate_order.app_service_certificate_orders : v.csr]
}
output "app_service_certificate_orders_distinguished_name" {
  description = "List of distinguished_name values across all app_service_certificate_orders"
  value       = [for k, v in azurerm_app_service_certificate_order.app_service_certificate_orders : v.distinguished_name]
}
output "app_service_certificate_orders_domain_verification_token" {
  description = "List of domain_verification_token values across all app_service_certificate_orders"
  value       = [for k, v in azurerm_app_service_certificate_order.app_service_certificate_orders : v.domain_verification_token]
}
output "app_service_certificate_orders_expiration_time" {
  description = "List of expiration_time values across all app_service_certificate_orders"
  value       = [for k, v in azurerm_app_service_certificate_order.app_service_certificate_orders : v.expiration_time]
}
output "app_service_certificate_orders_intermediate_thumbprint" {
  description = "List of intermediate_thumbprint values across all app_service_certificate_orders"
  value       = [for k, v in azurerm_app_service_certificate_order.app_service_certificate_orders : v.intermediate_thumbprint]
}
output "app_service_certificate_orders_is_private_key_external" {
  description = "List of is_private_key_external values across all app_service_certificate_orders"
  value       = [for k, v in azurerm_app_service_certificate_order.app_service_certificate_orders : v.is_private_key_external]
}
output "app_service_certificate_orders_key_size" {
  description = "List of key_size values across all app_service_certificate_orders"
  value       = [for k, v in azurerm_app_service_certificate_order.app_service_certificate_orders : v.key_size]
}
output "app_service_certificate_orders_location" {
  description = "List of location values across all app_service_certificate_orders"
  value       = [for k, v in azurerm_app_service_certificate_order.app_service_certificate_orders : v.location]
}
output "app_service_certificate_orders_name" {
  description = "List of name values across all app_service_certificate_orders"
  value       = [for k, v in azurerm_app_service_certificate_order.app_service_certificate_orders : v.name]
}
output "app_service_certificate_orders_product_type" {
  description = "List of product_type values across all app_service_certificate_orders"
  value       = [for k, v in azurerm_app_service_certificate_order.app_service_certificate_orders : v.product_type]
}
output "app_service_certificate_orders_resource_group_name" {
  description = "List of resource_group_name values across all app_service_certificate_orders"
  value       = [for k, v in azurerm_app_service_certificate_order.app_service_certificate_orders : v.resource_group_name]
}
output "app_service_certificate_orders_root_thumbprint" {
  description = "List of root_thumbprint values across all app_service_certificate_orders"
  value       = [for k, v in azurerm_app_service_certificate_order.app_service_certificate_orders : v.root_thumbprint]
}
output "app_service_certificate_orders_signed_certificate_thumbprint" {
  description = "List of signed_certificate_thumbprint values across all app_service_certificate_orders"
  value       = [for k, v in azurerm_app_service_certificate_order.app_service_certificate_orders : v.signed_certificate_thumbprint]
}
output "app_service_certificate_orders_status" {
  description = "List of status values across all app_service_certificate_orders"
  value       = [for k, v in azurerm_app_service_certificate_order.app_service_certificate_orders : v.status]
}
output "app_service_certificate_orders_tags" {
  description = "List of tags values across all app_service_certificate_orders"
  value       = [for k, v in azurerm_app_service_certificate_order.app_service_certificate_orders : v.tags]
}
output "app_service_certificate_orders_validity_in_years" {
  description = "List of validity_in_years values across all app_service_certificate_orders"
  value       = [for k, v in azurerm_app_service_certificate_order.app_service_certificate_orders : v.validity_in_years]
}

