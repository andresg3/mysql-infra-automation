variable "aws_region" {
  description = "AWS region where resources will be deployed (default: us-east-1)"
  type        = string
  default     = "us-east-1"
}

variable "db_name" {
  description = "RDS Instance DB name"
  type        = string
  default     = "config_db"
}

variable "db_username" {
  description = "Master username for RDS Instance"
  type        = string
  default     = "dbadmin"
}

variable "db_password" {
  description = "Master password for RDS Instance"
  type        = string
  sensitive   = true
}

variable "db_instance_class" {
  description = "Instance class for RDS"
  type        = string
  default     = "db.t3.micro"
}

variable "allocated_storage" {
  description = "Storage (GB) for the database"
  type        = number
  default     = 20
}

variable "vpc_security_group_ids" {
  description = "List of security group IDs for DB access"
  type        = list(string)
  default     = []
}

variable "db_subnet_group_name" {
  description = "Subnet group name for RDS"
  type        = string
  default     = null
}

variable "key_pair_name" {
  description = "Existing AWS key pair name for SSH access"
  type        = string
}

variable "environment" {
  description = "Deployment environment label"
  type        = string
  default     = "dev"
}