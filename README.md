
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.67 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.67 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_launch_template.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/launch_template) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami_id"></a> [ami\_id](#input\_ami\_id) | The AMI from which to launch the instance. If not supplied, EKS will use its own default image | `string` | `""` | no |
| <a name="input_block_device_mappings"></a> [block\_device\_mappings](#input\_block\_device\_mappings) | Specify volumes to attach to the instance besides the volumes specified by the AMI | <pre>list(object({<br>    device_name = string<br>    ebs = optional(list(object({<br>      delete_on_termination = optional(string)<br>      encrypted             = optional(string)<br>      iops                  = optional(number)<br>      kms_key_id            = optional(string)<br>      snapshot_id           = optional(string)<br>      throughput            = optional(number)<br>      volume_size           = optional(number)<br>      volume_type           = optional(string)<br>    })))<br>    no_device    = optional(string)<br>    virtual_name = optional(string)<br>  }))</pre> | `[]` | no |
| <a name="input_capacity_reservation_specification"></a> [capacity\_reservation\_specification](#input\_capacity\_reservation\_specification) | Targeting for EC2 capacity reservations | `any` | `{}` | no |
| <a name="input_cpu_options"></a> [cpu\_options](#input\_cpu\_options) | The CPU options for the instance | `map(string)` | `{}` | no |
| <a name="input_create"></a> [create](#input\_create) | Determines whether to create a launch template or not. If set to `false`, EKS will use its own default launch template | `bool` | `true` | no |
| <a name="input_credit_specification"></a> [credit\_specification](#input\_credit\_specification) | Customize the credit specification of the instance | `map(string)` | `{}` | no |
| <a name="input_default_version"></a> [default\_version](#input\_default\_version) | Default version of the launch template | `string` | `null` | no |
| <a name="input_description"></a> [description](#input\_description) | Description of the launch template | `string` | `null` | no |
| <a name="input_disable_api_termination"></a> [disable\_api\_termination](#input\_disable\_api\_termination) | If true, enables EC2 instance termination protection | `bool` | `null` | no |
| <a name="input_ebs_optimized"></a> [ebs\_optimized](#input\_ebs\_optimized) | If true, the launched EC2 instance(s) will be EBS-optimized | `bool` | `null` | no |
| <a name="input_elastic_gpu_specifications"></a> [elastic\_gpu\_specifications](#input\_elastic\_gpu\_specifications) | The elastic GPU to attach to the instance | `any` | `{}` | no |
| <a name="input_elastic_inference_accelerator"></a> [elastic\_inference\_accelerator](#input\_elastic\_inference\_accelerator) | Configuration block containing an Elastic Inference Accelerator to attach to the instance | `map(string)` | `{}` | no |
| <a name="input_enable_monitoring"></a> [enable\_monitoring](#input\_enable\_monitoring) | Enables/disables detailed monitoring | `bool` | `null` | no |
| <a name="input_enclave_options"></a> [enclave\_options](#input\_enclave\_options) | Enable Nitro Enclaves on launched instances | `map(string)` | `{}` | no |
| <a name="input_iam_instance_profile"></a> [iam\_instance\_profile](#input\_iam\_instance\_profile) | IAM instance profile to associate | `list(any)` | `[]` | no |
| <a name="input_instance_initiated_shutdown_behavior"></a> [instance\_initiated\_shutdown\_behavior](#input\_instance\_initiated\_shutdown\_behavior) | Shutdown behavior for the instance | `string` | `null` | no |
| <a name="input_instance_market_options"></a> [instance\_market\_options](#input\_instance\_market\_options) | The market (purchasing) option for the instance | `any` | `{}` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | Instance type to use for the launch template | `string` | `""` | no |
| <a name="input_kernel_id"></a> [kernel\_id](#input\_kernel\_id) | The kernel ID | `string` | `null` | no |
| <a name="input_key_name"></a> [key\_name](#input\_key\_name) | The key name that should be used for the instance(s) | `string` | `null` | no |
| <a name="input_license_specifications"></a> [license\_specifications](#input\_license\_specifications) | A map of license specifications to associate with | `any` | `{}` | no |
| <a name="input_maintenance_options"></a> [maintenance\_options](#input\_maintenance\_options) | The maintenance options for the instance | `any` | `{}` | no |
| <a name="input_metadata_options"></a> [metadata\_options](#input\_metadata\_options) | Customize the metadata options for the instance | `list(any)` | `[]` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of launch template to be created | `string` | `null` | no |
| <a name="input_network_interfaces"></a> [network\_interfaces](#input\_network\_interfaces) | Customize network interfaces to be attached at instance boot time | <pre>list(object({<br>    associate_carrier_ip_address = optional(string)<br>    associate_public_ip_address  = optional(string)<br>    delete_on_termination        = optional(string)<br>    description                  = optional(string)<br>    device_index                 = optional(number)<br>    interface_type               = optional(string)<br>    ipv4_address_count           = optional(number)<br>    ipv4_addresses               = optional(list(string))<br>    ipv4_prefix_count            = optional(number)<br>    ipv4_prefixes                = optional(list(string))<br>    ipv6_address_count           = optional(number)<br>    ipv6_addresses               = optional(list(string))<br>    ipv6_prefix_count            = optional(number)<br>    ipv6_prefixes                = optional(list(string))<br>    network_card_index           = optional(number)<br>    network_interface_id         = optional(string)<br>    private_ip_address           = optional(string)<br>    security_groups              = optional(list(string))<br>    subnet_id                    = optional(string)<br>  }))</pre> | `[]` | no |
| <a name="input_placement"></a> [placement](#input\_placement) | The placement of the instance | <pre>object({<br>    affinity                = optional(string)<br>    availability_zone       = optional(string)<br>    group_name              = optional(string)<br>    host_id                 = optional(string)<br>    tenancy                 = optional(string)<br>    spread_domain           = optional(string)<br>    partition_number        = optional(number)<br>    host_resource_group_arn = optional(string)<br>  })</pre> | `null` | no |
| <a name="input_private_dns_name_options"></a> [private\_dns\_name\_options](#input\_private\_dns\_name\_options) | The options for the instance hostname. The default values are inherited from the subnet | `map(string)` | `{}` | no |
| <a name="input_ram_disk_id"></a> [ram\_disk\_id](#input\_ram\_disk\_id) | The ID of the ram disk | `string` | `null` | no |
| <a name="input_tag_specifications"></a> [tag\_specifications](#input\_tag\_specifications) | The tags to apply to the resources during launch | `list(any)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of additional tags to add to the tag\_specifications of launch template created | `map(string)` | `{}` | no |
| <a name="input_user_data"></a> [user\_data](#input\_user\_data) | Base64 encoded user data rendered for the provided inputs | `string` | `null` | no |
| <a name="input_vpc_security_group_ids"></a> [vpc\_security\_group\_ids](#input\_vpc\_security\_group\_ids) | A list of security group IDs to associate | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the launch template |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
