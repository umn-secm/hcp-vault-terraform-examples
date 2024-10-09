#----------------------------------------------------------
# Enable default approle mount
#----------------------------------------------------------

# Enable approle mount at cesi unit path
resource "vault_auth_backend" "approle" {
  type       = "approle"
  namespace  = each.value
}

# --- Uncomment if creating secrets engine for a sub-namespace ---
# resource "vault_auth_backend" "approle_subteams" {
#   type       = "approle"
#   namespace  = "${var.namespace}/${var.subteam_namespace}"
# }
