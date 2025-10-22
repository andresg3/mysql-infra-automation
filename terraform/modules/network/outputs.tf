output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main.id
}

output "public_subnet_id" {
  description = "Public subnet ID for bastion"
  value       = aws_subnet.public_a.id
}

output "private_subnet_ids" {
  description = "Private subnet IDs for RDS"
  value       = [aws_subnet.private_a.id, aws_subnet.private_b.id]
}

output "mysql_sg_id" {
  description = "MySQL security group ID"
  value       = aws_security_group.mysql_sg.id
}
