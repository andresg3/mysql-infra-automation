# Public subnet (used for bastion)
output "public_subnet_id" {
  description = "Public subnet ID for the bastion host"
  value       = aws_subnet.public_a.id
}

output "bastion_sg_id" {
  description = "Security Group ID allowing SSH to bastion"
  value       = aws_security_group.bastion_sg.id
}

output "mysql_sg_id" {
  description = "Security Group ID for RDS MySQL"
  value       = aws_security_group.mysql_sg.id
}

output "db_subnet_group_name" {
  description = "Name of the DB subnet group for RDS"
  value       = aws_db_subnet_group.rds.name
}

output "vpc_id" {
  description = "Main VPC ID"
  value       = aws_vpc.main.id
}
