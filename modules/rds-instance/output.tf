output "rds_instance_arn" {
  value = aws_db_instance.default.arn
}

output "rds_instance_address" {
  value = aws_db_instance.default.address
}