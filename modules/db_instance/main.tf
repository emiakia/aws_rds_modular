resource "aws_db_instance" "postgres" {
  allocated_storage      = var.dbins_allocated_storage
  storage_type           = var.dbins_storage_type
  engine                 = var.dbins_engine
  engine_version         = var.dbins_engine_version
  instance_class         = var.dbins_instance_class
  identifier             = var.dbins_identifier
  username               = var.dbins_username
  password               = var.dbins_password
  publicly_accessible    = var.dbins_publicly_accessible
  vpc_security_group_ids = var.dbins_vpc_security_group_ids

  db_subnet_group_name = var.dbins_subnet_group_name

  skip_final_snapshot = true

  tags = {
    Name = "PostgreSQL-Terraform"
  }
}
