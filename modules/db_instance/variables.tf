variable "dbins_allocated_storage" {
  description = "Allocated storage for the DB instance"
  type        = number
}

variable "dbins_storage_type" {
  description = "Storage type for the DB instance"
  type        = string
}

variable "dbins_engine" {
  description = "The database engine to use"
  type        = string
}

variable "dbins_engine_version" {
  description = "The engine version for the DB instance"
  type        = string
}

variable "dbins_instance_class" {
  description = "The instance class for the DB instance"
  type        = string
}

variable "dbins_identifier" {
  description = "The DB instance identifier"
  type        = string
}

variable "dbins_username" {
  description = "The master username for the DB instance"
  type        = string
}

variable "dbins_password" {
  description = "The master password for the DB instance"
  type        = string
}

variable "dbins_publicly_accessible" {
  description = "Whether the DB instance is publicly accessible"
  type        = bool
}

variable "dbins_vpc_security_group_ids" {
  description = "VPC security group IDs for the DB instance"
  type        = list(string)
}

variable "dbins_subnet_group_name" {
  description = "The DB subnet group name"
  type        = string
}
