variable "vault_address" {
  type        = string
  description = "Vault address"
  default     = "https://hcp-vault-private-vault-fc507e0d.5d5b1f21.z1.hashicorp.cloud:8200"
}

variable "namespace" {
  type        = string
  description = "Prefix with admin/ (ex: admin/secm)"
}

variable "subteam_namespaces" {

}
