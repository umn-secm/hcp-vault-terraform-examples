variable "vault_address" {
  type        = string
  description = "Vault address"
  default     = "https://hcp-vault-private-vault-fc507e0d.5d5b1f21.z1.hashicorp.cloud:8200"
}

variable "namespace" {
  type        = string
  description = "Prefix with admin/ (ex: admin/secm)"
}

# --- Uncomment if creating secrets engine for a sub-namespace ---
# variable "subteam_namespace" {
#   type        = string
#   description = "Prefix with admin/cesi_namespace (ex: admin/secm/subteamA)"
# }
