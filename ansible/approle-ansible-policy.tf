resource "vault_policy" "ansible" {
  name   = "approle_ansible_access_policy"
  policy = file("${path.root}/policy_templates/approle-ansible.tpl")
}
