## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14.0 |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_null"></a> [null](#provider\_null) | n/a |
| <a name="provider_random"></a> [random](#provider\_random) | n/a |
| <a name="provider_tls"></a> [tls](#provider\_tls) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [null_resource.download_private_key](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [random_id.name](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/id) | resource |
| [tls_private_key.key](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_algorithm"></a> [algorithm](#input\_algorithm) | The name of the algorithm to use for the key. Currently-supported values are "RSA" and "ECDSA". Defaults to "RSA" | `string` | `"RSA"` | no |
| <a name="input_create"></a> [create](#input\_create) | Create Module, defaults to true. | `bool` | `true` | no |
| <a name="input_ecdsa_curve"></a> [ecdsa\_curve](#input\_ecdsa\_curve) | When algorithm is "ECDSA", the name of the elliptic curve to use. May be any one of "P224", "P256", "P384" or "P521". Defaults to "P224". | `string` | `"P224"` | no |
| <a name="input_name"></a> [name](#input\_name) | Filename to write the private key data to, default to "tls-private-key". | `string` | `"private-key"` | no |
| <a name="input_permissions"></a> [permissions](#input\_permissions) | The Unix file permission to assign to the cert files (e.g. 0600). Defaults to "0600". | `string` | `"0400"` | no |
| <a name="input_rsa_bits"></a> [rsa\_bits](#input\_rsa\_bits) | When algorithm is "RSA", the size of the generated RSA key in bits. Defaults to "2048". | `string` | `"2048"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_algorithm"></a> [algorithm](#output\_algorithm) | n/a |
| <a name="output_private_key_filename"></a> [private\_key\_filename](#output\_private\_key\_filename) | n/a |
| <a name="output_private_key_name"></a> [private\_key\_name](#output\_private\_key\_name) | n/a |
| <a name="output_private_key_pem"></a> [private\_key\_pem](#output\_private\_key\_pem) | n/a |
| <a name="output_public_key_openssh"></a> [public\_key\_openssh](#output\_public\_key\_openssh) | n/a |
| <a name="output_public_key_pem"></a> [public\_key\_pem](#output\_public\_key\_pem) | n/a |
