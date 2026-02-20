# -------------------------------------------------------------------------------------
# Data Blcok
# -------------------------------------------------------------------------------------

data "google_secret_manager_secret_version" "csp_pin_id" {
  count = var.csp_pin_id_secret != "" && var.csp_pin_id_secret != null ? 1 : 0
  project = var.project_id
  secret  = var.csp_pin_id_secret 
  version = "latest"           
}

data "google_secret_manager_secret_version" "csp_pin_value" {
  count = var.csp_pin_value_secret != "" && var.csp_pin_value_secret != null ? 1 : 0
  project = var.project_id
  secret  = var.csp_pin_value_secret 
  version = "latest"           
}

data "google_secret_manager_secret_version" "csp_authcodes" {
  count = var.csp_authcodes_secret != "" && var.csp_authcodes_secret != null ? 1 : 0
  project = var.project_id
  secret  = var.csp_authcodes_secret 
  version = "latest"           
}