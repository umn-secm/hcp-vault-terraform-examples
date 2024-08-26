resource "vault_policy" "github" {
  name   = "github"
  policy = file("${path.root}/policy_templates/github.tpl")
}
