## NOTICE

A corresponding policy will be created in this module for you in the `policy_templates` folder. Please update this file as necessary to access the correct secrets that are required.

## Applying Policies with the CLI

1. The policy within this module can also be created in Vault via the CLI using the command `vault policy write kvv2-example-policy kvv2.hcl`. 
    1. Please make sure to change the extension of the policy template files from `.tpl` to `.hcl` before running the command above
2. Once the policy has been created within the vault namespace, they can be assigned to groups using the command: `vault write identity/group/name/<group_name> policies="kvv2-example-policy"`

Please view this [link](https://developer.hashicorp.com/vault/tutorials/policies/policies) to follow a tutorial on the use of policies. Documentation of policies as a concept can be found [here](https://developer.hashicorp.com/vault/docs/concepts/policies)

## Providers

| Name | Version |
|------|---------|
| <a name="provider_vault"></a> [vault](https://registry.terraform.io/providers/hashicorp/vault/latest/docs) | latest |

## Modules

No modules.

## Resources

This Terraform will create the following resources

| Name | Type | Description |
|------|------| ----------- |
| [vault_mount.kvA](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/mount) | resource | Vault mount that will enable the kvv2 secrets engine

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Namespace of the CESI unit within vault | `string` | n/a | yes |
| <a name="input_vault_address"></a> [vault\_address](#input\_\_address) | The URL address of vault instance. Can be either for the public or private address  | `string` | https://hcp-vault-private-vault-fc507e0d.5d5b1f21.z1.hashicorp.cloud:8200 | no |

## Results

This will enable a new kv-v2 engine within the namespace.
<!-- END_TF_DOCS -->
