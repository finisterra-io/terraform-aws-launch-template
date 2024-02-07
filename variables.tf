################################################################################
# Launch template
################################################################################
variable "create" {
  description = "Determines whether to create a launch template or not. If set to `false`, EKS will use its own default launch template"
  type        = bool
  default     = true
}

variable "name" {
  description = "Name of launch template to be created"
  type        = string
  default     = null
}

variable "description" {
  description = "Description of the launch template"
  type        = string
  default     = null
}

variable "ebs_optimized" {
  description = "If true, the launched EC2 instance(s) will be EBS-optimized"
  type        = bool
  default     = null
}

variable "ami_id" {
  description = "The AMI from which to launch the instance. If not supplied, EKS will use its own default image"
  type        = string
  default     = ""
}

variable "key_name" {
  description = "The key name that should be used for the instance(s)"
  type        = string
  default     = null
}

variable "vpc_security_group_ids" {
  description = "A list of security group IDs to associate"
  type        = list(string)
  default     = []
}

variable "default_version" {
  description = "Default version of the launch template"
  type        = string
  default     = null
}

variable "disable_api_termination" {
  description = "If true, enables EC2 instance termination protection"
  type        = bool
  default     = null
}

variable "kernel_id" {
  description = "The kernel ID"
  type        = string
  default     = null
}

variable "ram_disk_id" {
  description = "The ID of the ram disk"
  type        = string
  default     = null
}

variable "block_device_mappings" {
  description = "Specify volumes to attach to the instance besides the volumes specified by the AMI"
  type = list(object({
    device_name = string
    ebs = list(object({
      delete_on_termination = string
      encrypted             = string
      iops                  = number
      kms_key_id            = string
      snapshot_id           = string
      throughput            = number
      volume_size           = number
      volume_type           = string
    }))
    no_device    = string
    virtual_name = string
  }))
  default = []
}


variable "capacity_reservation_specification" {
  description = "Targeting for EC2 capacity reservations"
  type        = any
  default     = {}
}

variable "cpu_options" {
  description = "The CPU options for the instance"
  type        = map(string)
  default     = {}
}

variable "credit_specification" {
  description = "Customize the credit specification of the instance"
  type        = map(string)
  default     = {}
}

variable "elastic_gpu_specifications" {
  description = "The elastic GPU to attach to the instance"
  type        = any
  default     = {}
}

variable "elastic_inference_accelerator" {
  description = "Configuration block containing an Elastic Inference Accelerator to attach to the instance"
  type        = map(string)
  default     = {}
}

variable "enclave_options" {
  description = "Enable Nitro Enclaves on launched instances"
  type        = map(string)
  default     = {}
}

variable "instance_market_options" {
  description = "The market (purchasing) option for the instance"
  type        = any
  default     = {}
}

variable "maintenance_options" {
  description = "The maintenance options for the instance"
  type        = any
  default     = {}
}

variable "license_specifications" {
  description = "A map of license specifications to associate with"
  type        = any
  default     = {}
}

variable "metadata_options" {
  description = "Customize the metadata options for the instance"
  type        = list(any)
  default     = []
}

variable "enable_monitoring" {
  description = "Enables/disables detailed monitoring"
  type        = bool
  default     = false
}

variable "network_interfaces" {
  description = "Customize network interfaces to be attached at instance boot time"
  type = list(object({
    associate_carrier_ip_address = string
    associate_public_ip_address  = string
    delete_on_termination        = string
    description                  = string
    device_index                 = number
    interface_type               = string
    ipv4_address_count           = number
    ipv4_addresses               = list(string)
    ipv4_prefix_count            = number
    ipv4_prefixes                = list(string)
    ipv6_address_count           = number
    ipv6_addresses               = list(string)
    ipv6_prefix_count            = number
    ipv6_prefixes                = list(string)
    network_card_index           = number
    network_interface_id         = string
    private_ip_address           = string
    security_groups              = list(string)
    subnet_id                    = string
  }))
  default = []
}


variable "placement" {
  description = "The placement of the instance"
  type        = map(string)
  default     = {}
}

variable "private_dns_name_options" {
  description = "The options for the instance hostname. The default values are inherited from the subnet"
  type        = map(string)
  default     = {}
}

variable "tags" {
  description = "A map of additional tags to add to the tag_specifications of launch template created"
  type        = map(string)
  default     = {}
}

variable "tag_specifications" {
  description = "The tags to apply to the resources during launch"
  type        = list(any)
  default     = []
}

variable "instance_type" {
  description = "Instance type to use for the launch template"
  type        = string
  default     = ""
}

variable "user_data" {
  description = "Base64 encoded user data rendered for the provided inputs"
  type        = string
  default     = null
}

variable "iam_instance_profile" {
  description = "IAM instance profile to associate"
  type        = list(any)
  default     = []
}

variable "instance_initiated_shutdown_behavior" {
  description = "Shutdown behavior for the instance"
  type        = string
  default     = null
}
