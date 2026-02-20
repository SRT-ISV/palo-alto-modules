
output "csp_pin_id_secret" {
  value = data.google_secret_manager_secret_version.csp_pin_id
}

output "csp_pin_value_secret" {
  value = data.google_secret_manager_secret_version.csp_pin_value
}

output "csp_authcodes_secret" {
  value = data.google_secret_manager_secret_version.csp_authcodes
}