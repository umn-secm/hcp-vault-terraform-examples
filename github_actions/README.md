# HCP Vault Terraform Examples

This terraform creates the following vault resources:

- JWT auth backend for github
- One role and policy that gives access for all the github_org's repositories to read all secrets under secret/github_actions/global/*
- Individual roles and policies for each repository that can read all secrets under secret/github_actions/${repository}/* 

## Terraform tfvars

If you would like to re-use the same variables without inputting them at every terraform plan/apply, create the following terraform.tfvars file at the root of the github_actions directory.

```
namespace     = "admin/CESI"
github_org    = "umn-CESI"
repository    = ["hcp-vault-terraform-examples", "repo_2"]
vault_address = "https://hcp-vault-private-vault-fc507e0d.5d5b1f21.z1.hashicorp.cloud:8200"
```

## GitHub Actions Sample Workflow

See [sample actions file](../.github/workflows/vault_github_actions_example.yml) in this repository.
