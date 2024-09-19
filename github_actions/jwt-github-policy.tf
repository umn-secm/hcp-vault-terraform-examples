resource "vault_policy" "global_github_actions" {
  name   = "global_github_actions_access_policy"
  policy = file("${path.root}/policy_templates/global-github-actions.tpl")
}

resource "vault_policy" "single_repo_github_actions" {
  for_each = toset(var.repository)
  name     = "${each.value}_github_actions_access_policy"
  policy   = templatefile("${path.root}/policy_templates/single-repo-github-actions.tpl", { repo_name = "${each.value}" })
}
