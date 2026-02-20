output "bucket_name" {
  value = module.bootstrap.bucket_name
}

output "bucket" {
  value = module.bootstrap.bucket
}

output "csp_pin_id_secret" {
  value = module.fetch_secret.csp_pin_id_secret
}

output "csp_pin_value_secret" {
  value = module.fetch_secret.csp_pin_value_secret
}

output "csp_authcodes_secret" {
  value = module.fetch_secret.csp_authcodes_secret
}