# HCP Vault Terraform Examples

## Terraform tfvars

Example terraform.tfvars file

```
namespace     = "admin/CESI"
repository    = "umn-CESI/repo_name"
vault_address = "https://hcp-vault-private-vault-fc507e0d.5d5b1f21.z1.hashicorp.cloud:8200"
```

## Commands

*Output curl string*
`vault kv get -output-curl-string secret/apps/github/test-secret`

*Output policy*
`vault kv get -output-policy secret/apps/github/test-secret`

*Patch policy*
`vault kv patch -output-policy secret/apps/github/test-secret foo=test`

*Metadata*
`vault kv metadata put -custom-metadata=Membership="Platinum" secret/apps/github/test-secret`


## GitHub Actions Example

