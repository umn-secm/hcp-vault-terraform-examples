variable "vault_address" {
  type        = string
  description = "Vault address"
  default     = "https://hcp-vault-private-vault-fc507e0d.5d5b1f21.z1.hashicorp.cloud:8200"
}

variable "namespace" {
  type        = string
  description = "Prefix with admin/ (ex: admin/secm)"
}

variable "github_org" {
  type        = string
  description = "Name of Github Org (ex: umn-secm)"
}

variable "repository" {
  type        = list(string)
  description = "List of repositories to create vault roles/policies for (ex: [\"repo_1\", \"repo_2\"])"
}
