resource "vault_policy" "global_gh_actions" {
  name   = var.global_gh_actions_role_name
  policy = file("${path.root}/policy_templates/${var.global_gh_actions_role_name}.tpl")
}

resource "vault_policy" "util-container" {
  name   = var.repository
  policy = file("${path.root}/policy_templates/${var.repository}.tpl")
}