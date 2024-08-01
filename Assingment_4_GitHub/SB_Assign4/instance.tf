module "instance" {
    source = "../Modules/instance"
    public_key = var.public_key
    ami                         = var.ami
  instance_type               = var.instance_type
  subnet_id                   = module.Subnet.subnet_id
  sgrp_id = module.securitygroup.securitygroup_id
  
}