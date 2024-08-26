# HCP Vault Terraform Examples

## Commands

*Output curl string*
`vault kv get -output-curl-string secret/apps/github/test-secret`

*Output policy*
`vault kv get -output-policy secret/apps/github/test-secret`

*Patch policy*
`vault kv patch -output-policy secret/apps/github/test-secret foo=test`

*Metadata*
`vault kv metadata put -custom-metadata=Membership="Platinum" secret/apps/github/test-secret`
