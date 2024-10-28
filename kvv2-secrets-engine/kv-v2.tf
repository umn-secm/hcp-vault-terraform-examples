#----------------------------------------------------------
# Enable secrets engines
#----------------------------------------------------------

# Enable K/V v2 secrets engine at cesi namespace.
# path parameter below can be changed to allow for custom naming of enabled kvv2.
resource "vault_mount" "kvA" {
  path = "secret-example"
  type = "kv-v2"
}

# Create the policy for kvv2 example within vault
resource "vault_policy" "kv-v2_policy" {
  name   = "kvv2-example-policy"
  policy = file("${path.root}/policy_templates/kvv2.tpl")
}

# Assign new policy to internal group within namespace
# LIST ALL EXISTING POLICIES in the policies parameter otherwise the current existing policies will be deleted
# from an existing group
resource "vault_identity_group_policies" "policy_assignment" {
  policies = ["kvv2-example-policy"] #List all other existing policies here as well if applicable
  group_id = "insert_group_id_here"
}
