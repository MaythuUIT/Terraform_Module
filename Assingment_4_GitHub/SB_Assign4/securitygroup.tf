module "securitygroup" {
    source = "../Modules/securitygroup"
    sgrp_description = var.sgrp_description
    VPC_ID = module.VPC.vpc_id
    source_ip = var.source_ip
    ingress_protocol = var.ip_protocol
    

}