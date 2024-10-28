# Allow approle to view all secrets within secret/ path.
# Change policy below as necessary
path "secrets/*" {
  capabilities = ["read"]
}