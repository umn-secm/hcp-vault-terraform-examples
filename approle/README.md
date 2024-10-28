<!-- BEGIN_TF_DOCS -->
## NOTICE

A corresponding policy will be created in this module for you in the `policy_templates` folder. Please update this file as necessary to access the correct secrets that are required.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_vault"></a> [vault](https://registry.terraform.io/providers/hashicorp/vault/latest/docs) | latest |

## Modules

No modules.

## Resources

This terraform will create the following resources

| Name | Type | Description |
|------|------| ----------- |
| [vault_auth_backend.approle](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/auth_backend) | resource | Creates an approle within the namespace

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Namespace of the CESI unit within vault | `string` | n/a | yes |
| <a name="input_vault_address"></a> [vault\_address](#input\_\_address) | The URL address of vault instance. Can be either for the public or private address  | `string` | https://hcp-vault-private-vault-fc507e0d.5d5b1f21.z1.hashicorp.cloud:8200 | no |

## Results

This will create an approle within a user's namespace.
<!-- END_TF_DOCS -->
