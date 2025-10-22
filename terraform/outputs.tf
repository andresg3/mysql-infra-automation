output "rds_endpoint" {
  value       = module.mysql_config_db_rds.endpoint
  description = "MySQL RDS endpoint"
}

output "bastion_public_ip" {
  description = "Public IP of the bastion host"
  value       = module.ec2_bastion.bastion_public_ip
}