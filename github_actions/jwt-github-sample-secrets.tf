# Inject sample secrets into vault for this demo to illustrte the proper pathing. DO NOT use this method in production.

resource "vault_generic_secret" "global_example" {
  path                = "secret/github_actions/global/test"
  delete_all_versions = true
  data_json           = <<EOT
{
  "foo":   "bar",
  "pizza": "global_cheese"
}
EOT
}

resource "vault_generic_secret" "single_repo_example" {
  for_each            = toset(var.repository)
  path                = "secret/github_actions/${each.value}/test"
  delete_all_versions = true
  data_json           = <<EOT
{
  "repo": "${each.value}",
  "foo":   "bar",
  "pizza": "repo_cheese"
}
EOT
}
