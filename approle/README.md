<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_vault"></a> [vault](https://registry.terraform.io/providers/hashicorp/vault/latest/docs) | latest |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [vault_mount.kvA](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/mount) | resource |
| [vault_mount.kvA_subteams](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/mount) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cesi_subteams"></a> [cesi\_unit\_subteams](#input\_cesi\_unit\_subteams) | Data structure containing CESI groups and their subteams | `any` | n/a | yes |
| <a name="input_cesi_units"></a> [cesi\_units](#input\_cesi\_units) | List of CESI Units | `any` | n/a | yes |
| <a name="input_namespaces"></a> [namespaces](#input\_namespaces) | Data structure derived from the created namespaces from config module. Used to confirm that namespaces have been created before developing secrets engines within namespaces | `any` | n/a | yes |
| <a name="input__namespaces"></a> [subteams\_namespaces](#input\_\_namespaces) | Data structure derived from the created sub-namespaces from config module. Used to confirm that sub-namespaces have been created before developing secrets engines within sub-namespaces | `any` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
