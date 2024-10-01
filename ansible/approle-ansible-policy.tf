resource "vault_policy" "ansible" {
  name   = "approle_ansible"
  policy = file("${path.root}/policy_templates/approle-ansible.tpl")
}
