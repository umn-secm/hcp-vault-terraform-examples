# Namespaces are provisioned with a default approle at path approle
data "vault_auth_backend" "approle" {
  path = "approle"
}

# Create policy in vault for approle
resource "vault_policy" "approle_policy" {
  name   = "approle_ansible_access_policy"
  policy = file("${path.root}/policy_templates/approle.tpl")
}

# Create backend role with permissions assigned to approle
resource "vault_approle_auth_backend_role" "backend_role" {
  backend        = data.vault_auth_backend.approle.path
  role_name      = "approle-test"
  secret_id_ttl = "3600s"
  token_policies = ["default", vault_policy.approle_policy.name]
}
