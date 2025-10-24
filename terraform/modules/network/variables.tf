variable "aws_region" {
  description = "AWS region for VPC and subnets"
  type        = string
}
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "private_subnet_a_cidr" {
  description = "CIDR block for subnet A"
  type        = string
  default     = "10.0.1.0/24"
}

variable "private_subnet_b_cidr" {
  description = "CIDR block for subnet B"
  type        = string
  default     = "10.0.2.0/24"
}

variable "public_subnet_a_cidr" {    # Public
  description = "CIDR block for public subnet A (bastion)"
  type        = string
  default     = "10.0.0.0/24"
}

variable "allowed_cidrs" {
  description = "List of CIDR blocks allowed to access MySQL"
  type        = list(string)
  default     = ["0.0.0.0/0"] # For testing porpuses only
}

variable "project_name" {
  description = "Name prefix for tagging"
  type        = string
  default     = "mysql-demo"
}
