variable "db_subnet_group_name" {
  description = "The name of the DB subnet group"
  type        = string
}

variable "db_subnet_group_subnet_ids" {
  description = "List of subnet IDs for the DB subnet group"
  type        = list(string)
}
