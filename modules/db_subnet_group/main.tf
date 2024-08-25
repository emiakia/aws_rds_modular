resource "aws_db_subnet_group" "default" {
  name       = var.db_subnet_group_name
  subnet_ids = var.db_subnet_group_subnet_ids

  tags = {
    Name = "Default subnet group"
  }
}
