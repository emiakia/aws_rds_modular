output "db_instance_endpoint" {
  description = "The connection endpoint for the PostgreSQL DB instance"
  value       = module.db_instance.endpoint
}

output "db_instance_id" {
  description = "The ID of the DB instance"
  value       = module.db_instance.db_instance_id
}

output "db_instance_address" {
  description = "The Public DNS (Endpoint) of the DB instance"
  value       = module.db_instance.db_instance_address
}

output "db_instance_username" {
  description = "The username for the DB instance"
  value       = module.db_instance.db_instance_username
}

output "db_instance_password" {
  description = "The password for the DB instance"
  value       = module.db_instance.db_instance_password
  sensitive   = true # Mark this output as sensitive to hide it by default
}

output "security_group_id" {
  description = "The ID of the security group"
  value       = module.security_group.sg_id
}

output "db_subnet_group_name" {
  description = "The name of the DB subnet group"
  value       = module.db_subnet_group.db_subnet_group_name
}
