variable "db_name" {}
variable "db_username" {}
variable "db_password" { sensitive = true }
variable "db_instance_class" {}
variable "allocated_storage" {}
variable "vpc_security_group_ids" { type = list(string) }
variable "db_subnet_group_name" { type = string }
variable "aws_region" {}
