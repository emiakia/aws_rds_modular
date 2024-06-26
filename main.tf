provider "aws" {
  region = var.aws_region
}

module "db_instance" {
  source                   = "./modules/db_instance"
  dbins_allocated_storage  = var.dbins_allocated_storage
  dbins_storage_type       = var.dbins_storage_type
  dbins_engine             = var.dbins_engine
  dbins_engine_version     = var.dbins_engine_version
  dbins_instance_class     = var.dbins_instance_class
  dbins_identifier         = var.dbins_identifier
  dbins_username           = var.dbins_username
  dbins_password           = var.dbins_password
  dbins_publicly_accessible = var.dbins_publicly_accessible
  dbins_vpc_security_group_ids = [module.security_group.sg_id]
  dbins_subnet_group_name  = module.db_subnet_group.db_subnet_group_name
}

module "security_group" {
  source             = "./modules/security_group"
  sg_name            = var.sg_name
  sg_description     = var.sg_description
  sg_ingress_from_port = var.sg_ingress_from_port
  sg_ingress_to_port = var.sg_ingress_to_port
  sg_ingress_protocol = var.sg_ingress_protocol
  sg_ingress_cidr_blocks = var.sg_ingress_cidr_blocks
  sg_egress_from_port = var.sg_egress_from_port
  sg_egress_to_port   = var.sg_egress_to_port
  sg_egress_protocol  = var.sg_egress_protocol
  sg_egress_cidr_blocks = var.sg_egress_cidr_blocks
}

# 
module "db_subnet_group" {
  source       = "./modules/db_subnet_group"
  db_subnet_group_name = var.db_subnet_group_name
  db_subnet_group_subnet_ids = data.aws_subnets.default.ids
}

# Data source to get default VPC subnets
data "aws_subnets" "default" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
}

# Data source to get default VPC
data "aws_vpc" "default" {
  default = true
}
