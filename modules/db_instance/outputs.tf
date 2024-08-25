output "endpoint" {
  description = "The connection endpoint for the PostgreSQL DB instance"
  value       = aws_db_instance.postgres.endpoint
}

output "db_instance_id" {
  description = "The ID of the DB instance"
  value       = aws_db_instance.postgres.id
}

output "db_instance_address" {
  description = "The Public DNS (Endpoint) of the DB instance"
  value       = aws_db_instance.postgres.address
}

output "db_instance_username" {
  description = "The username for the DB instance"
  value       = aws_db_instance.postgres.username
}

output "db_instance_password" {
  description = "The password for the DB instance"
  value       = aws_db_instance.postgres.password
  sensitive   = true  # Mark this output as sensitive to hide it by default
}
