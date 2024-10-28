# Be able to do CRUD operations within secret/ path
# Change policy below as necessary
path "secret-example/*" {
  capabilities = ["create", "read", "update", "delete", "list", "patch"]
}

