
locals {
  key_name="${terraform.workspace}-public-key"
  instance_name="${terraform.workspace}-instance"
}

resource "aws_key_pair" "instance_key" {
  key_name   = local.key_name
  public_key = file(var.public_key)
  tags = {"NAME" = local.key_name
  "Managed By" = "Terraform"}

}


resource "aws_instance" "bastion_host" {
  ami                         = var.ami
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = [var.sgrp_id]
  associate_public_ip_address = true
  key_name                    = aws_key_pair.instance_key.key_name
  tags = {
    Name = local.instance_name
    "Managed By" = "Terraform"
  }
}
