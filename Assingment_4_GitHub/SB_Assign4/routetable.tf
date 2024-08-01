module "routetable" {
    depends_on = [ module.IGW ,module.VPC,module.Subnet]
    source = "../Modules/routetable"
    VPC_ID = module.VPC.vpc_id
    route_CIDR = var.route_CIDR
    subnet_id = module.Subnet.subnet_id
    gateway_id = module.IGW.igw_id
        
    }
        
    

  
