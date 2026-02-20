variable "service_account" {
  description = "Service account email"
  default     = ""
  type        = string
}

variable "project_id" {
  description = "GCP Project ID"
  default     = ""
  type        = string
}

variable "region" {
  description = "GCP Region"
  default     = "us-central1"
  type        = string
}

variable "csp_authcodes_secret" {
  description = "(BYOL only) An authcode that is registered with your CSP account. "
  default     = ""
  type        = string
}

variable "csp_pin_id_secret" {
  description = "The firewall registration PIN ID for installing the device certificate onto the firewall."
  default     = ""
  type        = string
}

variable "csp_pin_value_secret" {
  description = "The firewall registration PIN Value for installing the device certificate onto the firewall."
  default     = ""
  type        = string
}