# jwt auth backend method
resource "vault_jwt_auth_backend" "github" {
  description        = "Example of setting up JWT authentication for GitHub actions."
  path               = "jwt-github-example"
  oidc_discovery_url = "https://token.actions.githubusercontent.com"
  bound_issuer       = "https://token.actions.githubusercontent.com"
}

# jwt auth backend role
resource "vault_jwt_auth_backend_role" "github" {
  backend        = vault_jwt_auth_backend.github.path
  role_name      = "test-role"
  role_type      = "jwt"
  token_policies = ["default", vault_policy.github.name]
  user_claim     = "actor"
  token_ttl      = 600
  bound_claims = {
    repository = var.repository
  }
}
