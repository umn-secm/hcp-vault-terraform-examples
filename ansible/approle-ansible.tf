# An approle auth method at path approle has been precreated for all teams
data "vault_auth_backend" "approle" {
  path = "approle"
}

# approle role for ansible
resource "vault_approle_auth_backend_role" "ansible" {
  backend        = data.vault_auth_backend.approle.path
  role_name      = "ansible"
  token_policies = ["default", vault_policy.ansible.name]
}

# secret ID for ansible
resource "vault_approle_auth_backend_role_secret_id" "ansible" {
  backend   = data.vault_auth_backend.approle.path
  role_name = vault_approle_auth_backend_role.ansible.role_name
}

# NOT FOR PRODUCTION - These outputs should be treated as sensitive and retrived via the CLI and not stored in the terraform state.
output "role_id" {
  value       = vault_approle_auth_backend_role.ansible.role_id
  description = "The role_id of the approle"
}

# terraform output secret_id
output "secret_id" {
  value       = vault_approle_auth_backend_role_secret_id.ansible.secret_id
  description = "A secret_id for the approle"
  sensitive   = true
}
