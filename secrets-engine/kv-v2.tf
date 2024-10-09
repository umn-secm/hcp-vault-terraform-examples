#----------------------------------------------------------
# Enable secrets engines
#----------------------------------------------------------

# Enable K/V v2 secrets engine at cesi unit path
resource "vault_mount" "kvA" {
  path       = "secret2"
  type       = "kv-v2"
}

# --- Uncomment if creating secrets engine for a sub-namespace ---
# resource "vault_mount" "kvA_subteams" {
#   path       = "secret"
#   type       = "kv-v2"
#   namespace  = "${var.namespace}/${var.subteam_namespace}"
# }
