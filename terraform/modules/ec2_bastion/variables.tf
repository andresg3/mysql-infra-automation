###############################################
# ec2_bastion/variables.tf
###############################################

variable "subnet_id" {
  description = "Public subnet ID where the bastion host will be launched"
  type        = string
}

variable "security_group_id" {
  description = "Security group ID that allows SSH access"
  type        = string
}

variable "key_pair_name" {
  description = "AWS key pair name used for SSH access"
  type        = string
}

variable "environment" {
  description = "Deployment environment (e.g. dev, prod)"
  type        = string
  default     = "dev"
}
