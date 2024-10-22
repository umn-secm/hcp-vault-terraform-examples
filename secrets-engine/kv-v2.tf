#----------------------------------------------------------
# Enable secrets engines
#----------------------------------------------------------

# Enable K/V v2 secrets engine at cesi namespace.
# path parameter below can be changed to allow for custom naming of enabled kvv2.
resource "vault_mount" "kvA" {
  path       = "secret"
  type       = "kv-v2"
}
