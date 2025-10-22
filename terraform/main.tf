module "network" {
  source = "./modules/network"

  aws_region   = var.aws_region
  project_name = "mysql-automation"
}

module "mysql_config_db_rds" {
  source                 = "./modules/rds_instance"
  db_name                = var.db_name
  db_username            = var.db_username
  db_password            = var.db_password
  db_instance_class      = var.db_instance_class
  allocated_storage      = var.allocated_storage
  vpc_security_group_ids = var.vpc_security_group_ids
  db_subnet_group_name   = var.db_subnet_group_name
  aws_region             = var.aws_region
}

module "bastion" {
  source            = "./modules/ec2_bastion"
  vpc_id            = module.network.vpc_id
  subnet_id         = module.network.public_subnet_id
  project_name      = "mysql-automation"
  ssh_public_key    = "~/.ssh/id_ed25519.pub"
  allowed_ssh_cidrs = ["157.100.139.150/32"] # <----- change later
}

