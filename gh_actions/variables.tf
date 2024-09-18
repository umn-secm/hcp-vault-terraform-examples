variable "vault_address" {
  type        = string
  description = "Vault address"
  default     = "https://hcp-vault-private-vault-fc507e0d.5d5b1f21.z1.hashicorp.cloud:8200"
}

variable "namespace" {
  type        = string
  description = "Prefix with admin/ (ex. admin/devex)"
}

variable "github_org" {
  type        = string
  description = "Name of Github Org example: umn-secm"
}

variable "repository" {
  type        = string
  description = "Name of repository"
}

variable "global_gh_actions_role_name" {
  type        = string
  description = "Name used for the role for the global access to github actions, also policy name and policy file name"
}