


module "bootstrap" {
  source          = "./modules/bootstrap"
  version         = "~> 2.0"
  location        = "US"
  service_account = var.service_account

  files = {
    "bootstrap_files/init-cfg.txt"                       = "config/init-cfg.txt"
    "bootstrap_files/authcodes"                          = "license/authcodes"
    "bootstrap_files/panup-all-antivirus-5120-5639"      = "content/panup-all-antivirus-5120-5639"
    "bootstrap_files/panupv2-all-contents-8952-9326"     = "content/panupv2-all-contents-8952-9326"
    "bootstrap_files/panupv3-all-wildfire-959874-963830" = "content/panupv3-all-wildfire-959874-963830"
  }
}

module "fetch_secret" {

source = "./modules/secrets"
project_id = var.project_id
csp_pin_id_secret = var.csp_pin_id_secret
csp_pin_value_secret = var.csp_pin_value_secret
csp_authcodes_secret = var.csp_authcodes_secret
}