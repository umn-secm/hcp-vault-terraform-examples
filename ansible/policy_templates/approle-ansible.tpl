# Required path for community.hashi_vault.hashi_vault
path "secret/data/ansible/*" {
  capabilities = ["read"]
}

# Required path for community.hashi_vault.vault_kv2_get lookup
path "secret/ansible/*" {
  capabilities = ["read"]
}
