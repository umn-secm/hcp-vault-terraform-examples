# Inject sample secrets into vault for this demo to illustrte the proper pathing. DO NOT use this method in production.

resource "vault_generic_secret" "ansible" {
  path                = "secret/ansible/test"
  delete_all_versions = true
  data_json           = <<EOT
{
  "foo":   "bar",
  "pizza": "ansible_cheese",
  "lookup_toppings": "ansible_sauce"
}
EOT
}
