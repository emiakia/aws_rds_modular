variable "aws_region" {
  description = "The AWS region to deploy to"
  default     = "eu-central-1"
}

# Variables for DB Instance
variable "dbins_allocated_storage" {
  description = "Allocated storage for the DB instance"
  default     = 10
}

variable "dbins_storage_type" {
  description = "Storage type for the DB instance"
  default     = "gp2"
}

variable "dbins_engine" {
  description = "The database engine to use"
  default     = "postgres"
}

variable "dbins_engine_version" {
  description = "The engine version for the DB instance"
  default     = "16.3"
}

variable "dbins_instance_class" {
  description = "The instance class for the DB instance"
  default     = "db.t3.micro"
}

variable "dbins_identifier" {
  description = "The DB instance identifier"
  default     = "database-terraform"
}

variable "dbins_username" {
  description = "The master username for the DB instance"
  default     = "postgres"
}

variable "dbins_password" {
  description = "The master password for the DB instance"
  default     = "12345678"
}

variable "dbins_publicly_accessible" {
  description = "Whether the DB instance is publicly accessible"
  default     = true
}

# Variables for Security Group
variable "sg_name" {
  description = "The name of the security group"
  default     = "allow_postgres"
}

variable "sg_description" {
  description = "The description of the security group"
  default     = "Allow inbound PostgreSQL traffic"
}

variable "sg_ingress_from_port" {
  description = "Ingress from port for the security group"
  default     = 5432
}

variable "sg_ingress_to_port" {
  description = "Ingress to port for the security group"
  default     = 5432
}

variable "sg_ingress_protocol" {
  description = "Ingress protocol for the security group"
  default     = "tcp"
}

variable "sg_ingress_cidr_blocks" {
  description = "Ingress CIDR blocks for the security group"
  default     = ["0.0.0.0/0"]
}

variable "sg_egress_from_port" {
  description = "Egress from port for the security group"
  default     = 0
}

variable "sg_egress_to_port" {
  description = "Egress to port for the security group"
  default     = 0
}

variable "sg_egress_protocol" {
  description = "Egress protocol for the security group"
  default     = "-1"
}

variable "sg_egress_cidr_blocks" {
  description = "Egress CIDR blocks for the security group"
  default     = ["0.0.0.0/0"]
}

# Variables for DB Subnet Group
variable "db_subnet_group_name" {
  description = "The name of the DB subnet group"
  default     = "default-subnet-group"
}
