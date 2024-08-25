variable "sg_name" {
  description = "The name of the security group"
  type        = string
}

variable "sg_description" {
  description = "The description of the security group"
  type        = string
}

variable "sg_ingress_from_port" {
  description = "Ingress from port for the security group"
  type        = number
}

variable "sg_ingress_to_port" {
  description = "Ingress to port for the security group"
  type        = number
}

variable "sg_ingress_protocol" {
  description = "Ingress protocol for the security group"
  type        = string
}

variable "sg_ingress_cidr_blocks" {
  description = "Ingress CIDR blocks for the security group"
  type        = list(string)
}

variable "sg_egress_from_port" {
  description = "Egress from port for the security group"
  type        = number
}

variable "sg_egress_to_port" {
  description = "Egress to port for the security group"
  type        = number
}

variable "sg_egress_protocol" {
  description = "Egress protocol for the security group"
  type        = string
}

variable "sg_egress_cidr_blocks" {
  description = "Egress CIDR blocks for the security group"
  type        = list(string)
}
