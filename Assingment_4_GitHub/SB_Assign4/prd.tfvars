
//vpc_name = "${terraform.workspace}-vpc"
availability_zone = "ap-southeast-1a"

//Routetable
route_CIDR = "0.0.0.0/0"

//security group
sgrp_description = "Security group for instance"
source_ip = "0.0.0.0/0"
ingress_port = 22
ip_protocol = "tcp"

//instance
public_key = "./id_rsa.pub"
ami = "ami-012c2e8e24e2ae21d"
instance_type = "t2.micro"

