
resource "aws_db_instance" "mysql" {
  identifier             = "mysql-demo-instance"
  allocated_storage      = var.allocated_storage
  engine                 = "mysql"
  engine_version         = "8.0.42"
  instance_class         = var.db_instance_class
  db_name                = var.db_name
  username               = var.db_username
  password               = var.db_password
  skip_final_snapshot    = true
  publicly_accessible    = true
  vpc_security_group_ids = var.vpc_security_group_ids
  db_subnet_group_name   = var.db_subnet_group_name

  backup_retention_period = 7
  deletion_protection     = false
  storage_encrypted       = true

  tags = {
    Name    = "mysql-rds-config-db"
    Project = "mysql-infra-automation"
  }
}