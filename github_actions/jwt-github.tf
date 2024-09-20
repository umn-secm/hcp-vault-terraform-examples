# jwt auth backend method
resource "vault_jwt_auth_backend" "github" {
  description        = "JWT backend for Github Actions"
  path               = "jwt-github-actions"
  oidc_discovery_url = "https://token.actions.githubusercontent.com"
  bound_issuer       = "https://token.actions.githubusercontent.com"
}

# jwt auth backend role to be used by ALL Repos in an Org -- Actions/workflows 
resource "vault_jwt_auth_backend_role" "global_github_actions" {
  depends_on        = [vault_policy.global_github_actions]
  backend           = vault_jwt_auth_backend.github.path
  role_name         = "global_github_actions"
  role_type         = "jwt"
  token_policies    = ["default", vault_policy.global_github_actions.name]
  user_claim        = "actor"
  token_ttl         = 600
  bound_claims_type = "glob"
  bound_claims = {
    repository = "${var.github_org}/*"
  }
}

# jwt auth backend role to be used by ONE Repo -- Actions/workflows 
resource "vault_jwt_auth_backend_role" "single_repo_github_actions" {
  depends_on        = [vault_policy.single_repo_github_actions]
  for_each          = toset(var.repository)
  backend           = vault_jwt_auth_backend.github.path
  role_name         = "${each.value}_github_actions"
  role_type         = "jwt"
  token_policies    = ["default", vault_policy.single_repo_github_actions[each.value].name]
  user_claim        = "actor"
  token_ttl         = 600
  bound_claims_type = "glob"
  bound_claims = {
    repository = "${var.github_org}/${each.value}"
  }
}
