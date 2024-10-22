#----------------------------------------------------------
# Enable default approle mount
#----------------------------------------------------------

# Enable approle mount at cesi unit path.
# Can enable at a custom path by defining "path" parameter
resource "vault_auth_backend" "approle" {
  type       = "approle"
  # path       = "approle2"
}
