output "endpoint" {
  value = aws_db_instance.mysql.address
}

output "db_name" {
  value = aws_db_instance.mysql.db_name
}