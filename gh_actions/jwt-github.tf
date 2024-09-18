# jwt auth backend method
resource "vault_jwt_auth_backend" "github" {
  description        = "JWT backend for Github Actions"
  path               = "jwt-gh-actions"
  oidc_discovery_url = "https://token.actions.githubusercontent.com"
  bound_issuer       = "https://token.actions.githubusercontent.com"
}

# jwt auth backend role to be used by all Repos in an Org -- Actions/workflows 
resource "vault_jwt_auth_backend_role" "global_gh_actions" {
  backend        = vault_jwt_auth_backend.github.path
  role_name      = var.global_gh_actions_role_name
  role_type      = "jwt"
  token_policies = ["default", vault_policy.global_gh_actions.name]
  user_claim     = "actor"
  token_ttl      = 600
  bound_claims_type = "glob"
  bound_claims = {
    repository = "${var.github_org}/*"
  }
}

# jwt auth backend role to be used by ONE Repo -- Actions/workflows 
resource "vault_jwt_auth_backend_role" "util-container" {
  backend        = vault_jwt_auth_backend.github.path
  role_name      = "util-container"
  role_type      = "jwt"
  token_policies = ["default", vault_policy.util-container.name]
  user_claim     = "actor"
  token_ttl      = 600
  bound_claims_type = "glob"
  bound_claims = {
    repository = "${var.github_org}/${var.repository}"
  }
}