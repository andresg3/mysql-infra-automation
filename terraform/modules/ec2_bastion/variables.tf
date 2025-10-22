variable "project_name" {
  description = "Project name for tagging"
  type        = string
}

variable "ssh_public_key" {
  description = "Path to SSH public key file"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID where the instance will be created"
  type        = string
}

variable "allowed_ssh_cidrs" {
  description = "CIDR blocks allowed to SSH into the bastion"
  type        = list(string)
  default     = ["157.100.139.150/32"] # For testing only
}

variable "subnet_id" {
  description = "Subnet ID for the EC2 instance"
  type        = string
} 