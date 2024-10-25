#----------------------------------------------------------
# Enable default approle mount
#----------------------------------------------------------

# Enable approle mount at cesi unit path.
# Can enable at a custom path by defining "path" parameter
resource "vault_auth_backend" "approle" {
  type = "approle"
  path = "approle"
}

# Create policy in vault for approle
resource "vault_policy" "approle_policy" {
  name   = "approle_ansible_access_policy"
  policy = file("${path.root}/policy_templates/approle.tpl")
}

# Create backend role with permissions assigned to approle
resource "vault_approle_auth_backend_role" "backend_role" {
  backend        = vault_auth_backend.approle.path
  role_name      = "approle-test"
  token_policies = ["default", vault_policy.approle_policy.name]
}