variable "VPC_CIDR" {
    type = string
  
}
variable "vpc_name" {
    type = string
    default = ""
  
}
variable "public_subnet_CIDR" {
    type = string
  
}


variable "availability_zone" {
    type = string
    default = ""
  
}

variable "route_CIDR"{
    type = string
    default = ""
}

variable "sgrp_description" {
 type = string
 default = ""  
}

variable "source_ip" {
    type = string
    default = ""
  
}

variable "ingress_port" {
  type = number
  default = 0  
}

variable "ip_protocol" {
    type = string
    default = ""
  
}
variable "public_key" {
    type = string
    default = ""
  
}

variable "ami" {
    type = string
    default = ""
}

variable "instance_type" {
    type = string
    default = ""
  
}