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
| [null_resource.download_ca_cert](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [null_resource.download_leaf_cert](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [null_resource.download_leaf_private_key](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [null_resource.download_private_key](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [random_id.name](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/id) | resource |
| [tls_cert_request.leaf](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/cert_request) | resource |
| [tls_locally_signed_cert.leaf](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/locally_signed_cert) | resource |
| [tls_private_key.ca](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |
| [tls_private_key.key](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |
| [tls_private_key.leaf](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |
| [tls_self_signed_cert.ca](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/self_signed_cert) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_algorithm"></a> [algorithm](#input\_algorithm) | The name of the algorithm to use for the key. Currently-supported values are "RSA" and "ECDSA". Defaults to "RSA". | `string` | `"RSA"` | no |
| <a name="input_allowed_uses"></a> [allowed\_uses](#input\_allowed\_uses) | List of keywords from RFC5280 describing a use that is permitted for the issued certificate. For more info and the list of keywords, see https://www.terraform.io/docs/providers/tls/r/self_signed_cert.html#allowed_uses. | `list(string)` | <pre>[<br>  "key_encipherment",<br>  "digital_signature"<br>]</pre> | no |
| <a name="input_ca_allowed_uses"></a> [ca\_allowed\_uses](#input\_ca\_allowed\_uses) | List of keywords from RFC5280 describing a use that is permitted for the CA certificate. For more info and the list of keywords, see https://www.terraform.io/docs/providers/tls/r/self_signed_cert.html#allowed_uses. | `list(string)` | <pre>[<br>  "cert_signing",<br>  "key_encipherment",<br>  "digital_signature"<br>]</pre> | no |
| <a name="input_ca_cert_override"></a> [ca\_cert\_override](#input\_ca\_cert\_override) | CA cert pem override. | `string` | `""` | no |
| <a name="input_ca_common_name"></a> [ca\_common\_name](#input\_ca\_common\_name) | The common name to use in the subject of the CA certificate (e.g. hashicorp.com). | `string` | `""` | no |
| <a name="input_ca_key_override"></a> [ca\_key\_override](#input\_ca\_key\_override) | CA private key pem override. | `string` | `""` | no |
| <a name="input_ca_override"></a> [ca\_override](#input\_ca\_override) | Don't create a CA cert, override with the provided CA to sign certs with. | `bool` | `false` | no |
| <a name="input_common_name"></a> [common\_name](#input\_common\_name) | The common name to use in the subject of the certificate (e.g. hashicorp.com). | `any` | n/a | yes |
| <a name="input_create_key"></a> [create\_key](#input\_create\_key) | Create Module, defaults to true. | `bool` | `true` | no |
| <a name="input_create_tls"></a> [create\_tls](#input\_create\_tls) | Create Module, defaults to true. | `bool` | `true` | no |
| <a name="input_dns_names"></a> [dns\_names](#input\_dns\_names) | List of DNS names for which the certificate will be valid (e.g. foo.hashicorp.com), defaults to empty list. | `list(string)` | `[]` | no |
| <a name="input_download_certs"></a> [download\_certs](#input\_download\_certs) | Download certs locally, defaults to false. | `bool` | `false` | no |
| <a name="input_ecdsa_curve"></a> [ecdsa\_curve](#input\_ecdsa\_curve) | When algorithm is "ECDSA", the name of the elliptic curve to use. May be any one of "P224", "P256", "P384" or "P521". Defaults to "P224" | `string` | `"P256"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | The environment, and also used as a identifier | `string` | n/a | yes |
| <a name="input_ip_addresses"></a> [ip\_addresses](#input\_ip\_addresses) | List of IP addresses for which the certificate will be valid (e.g. 127.0.0.1), defaults to empty list. | `list(string)` | `[]` | no |
| <a name="input_name"></a> [name](#input\_name) | Filename to write the private key data to. | `any` | n/a | yes |
| <a name="input_organization_name"></a> [organization\_name](#input\_organization\_name) | The name of the organization to associate with the certificates (e.g. HashiCorp Inc). | `any` | n/a | yes |
| <a name="input_permissions"></a> [permissions](#input\_permissions) | The Unix file permission to assign to the cert files (e.g. 0600). Defaults to "0600". | `string` | `"0600"` | no |
| <a name="input_project"></a> [project](#input\_project) | Name to be used on all the resources as identifier | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Region AWS where deploy occurs | `string` | `"us-east-1"` | no |
| <a name="input_rsa_bits"></a> [rsa\_bits](#input\_rsa\_bits) | When algorithm is "RSA", the size of the generated RSA key in bits. Defaults to "2048". | `string` | `"2048"` | no |
| <a name="input_validity_period_hours"></a> [validity\_period\_hours](#input\_validity\_period\_hours) | The number of hours after initial issuing that the certificate will become invalid. | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_algorithm"></a> [algorithm](#output\_algorithm) | n/a |
| <a name="output_private_key_filename"></a> [private\_key\_filename](#output\_private\_key\_filename) | n/a |
| <a name="output_private_key_name"></a> [private\_key\_name](#output\_private\_key\_name) | n/a |
| <a name="output_private_key_pem"></a> [private\_key\_pem](#output\_private\_key\_pem) | n/a |
| <a name="output_public_key_openssh"></a> [public\_key\_openssh](#output\_public\_key\_openssh) | n/a |
| <a name="output_public_key_pem"></a> [public\_key\_pem](#output\_public\_key\_pem) | n/a |
