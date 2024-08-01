locals {
  sgrp_name = "sgrp-${terraform.workspace}"
}


resource "aws_security_group" "securitygroup" {
  name        = local.sgrp_name
  description = var.sgrp_description
  vpc_id      = var.VPC_ID

  tags = {
    Name = local.sgrp_name
    "Managed By" = "Terraform"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_ssh" {
  security_group_id = aws_security_group.securitygroup.id
  cidr_ipv4         = var.source_ip
  from_port         = var.ingress_port
  ip_protocol       = var.ingress_protocol
  to_port           = var.ingress_port
}

output "securitygroup_id" {
  value = aws_security_group.securitygroup.id
  
}