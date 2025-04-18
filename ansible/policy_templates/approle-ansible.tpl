# Required path for community.hashi_vault.hashi_vault & Tower HashiCorp Vault Secret Lookup
path "secret/data/ansible/*" {
  capabilities = ["read"]
}

# Required path for community.hashi_vault.vault_kv2_get lookup
path "secret/ansible/*" {
  capabilities = ["read"]
}

# Path for AAP (Ansible Tower) machine credential
path "secret/data/aap/<CESI>-svc" {
  capabilities = ["read"]
}
