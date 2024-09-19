# Inject sample secrets into vault. Normally secrets should not be stored with this method

resource "vault_generic_secret" "global_example" {
  path      = "secret/github_actions/global/test"
  data_json = <<EOT
{
  "foo":   "bar",
  "pizza": "global_cheese"
}
EOT
}

resource "vault_generic_secret" "single_repo_example" {
  for_each  = toset(var.repository)
  path      = "secret/github_actions/${each.value}/test"
  data_json = <<EOT
{
  "repo": "${each.value}",
  "foo":   "bar",
  "pizza": "repo_cheese"
}
EOT
}
