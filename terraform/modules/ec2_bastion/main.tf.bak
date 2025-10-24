resource "aws_instance" "bastion" {
  ami           = "ami-0347d3ff408d5ff53" # AlmaLinux 9 x86_64 us-east-1
  instance_type = "t2.micro"              # Free-tier eligible
  key_name      = var.key_pair_name

  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = [var.security_group_id]
  associate_public_ip_address = true

  tags = {
    Name        = "dbadmin"
    Environment = var.environment
    Owner       = "DBA Team"
    Project     = "mysql-infra-automation"
  }

  # Ensure SSH starts automatically
  user_data = <<-EOF
    #!/bin/bash
    systemctl enable sshd
    systemctl start sshd
  EOF
}