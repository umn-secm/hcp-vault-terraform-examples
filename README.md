# HCP Vault Terraform Examples

This repository is intended to provide examples for how to configure your team's namespace to integrate with various secrets consumers and providers. Users can clone this repository down to use for their own use cases.

Please view the different examples below.

## GitHub Actions Example

| Name | Description |
|------| ----------- |
[GitHub Actions Example](./github_actions) | Creating policies to allow a GitHub Actions pipeline to pull from Vault.
[Ansible](./ansible) | Utilizing an approle to grab credentials from Vault within an Ansible Playbook
[Approle](./approle) | Create an approle authentication method and associate a role with an assigned policy
[Key Version 2 Secrets Engine](./kvv2-secrets-engine) | Create an approle authentication method and associate a role with an assigned policy

