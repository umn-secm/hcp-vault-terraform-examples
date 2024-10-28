<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_vault"></a> [vault](#provider\_vault) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [vault_approle_auth_backend_role.ansible](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/approle_auth_backend_role) | resource |
| [vault_approle_auth_backend_role_secret_id.ansible](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/approle_auth_backend_role_secret_id) | resource |
| [vault_generic_secret.ansible](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/generic_secret) | resource |
| [vault_policy.ansible](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/policy) | resource |
| [vault_auth_backend.approle](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/data-sources/auth_backend) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Namespace of the CESI unit within vault | `string` | n/a | yes |
| <a name="input_vault_address"></a> [vault\_address](#input\_\_address) | The URL address of vault instance. Can be either for the public or private address  | `string` | https://hcp-vault-private-vault-fc507e0d.5d5b1f21.z1.hashicorp.cloud:8200 | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_role_id"></a> [role\_id](#output\_role\_id) | The role\_id of the approle |
| <a name="output_secret_id"></a> [secret\_id](#output\_secret\_id) | A secret\_id for the approle |
<!-- END_TF_DOCS -->