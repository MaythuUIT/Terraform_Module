module "Subnet" {
    source = "../Modules/Subnet"
    public_subnet_CIDR = var.public_subnet_CIDR
    VPC_ID = module.VPC.vpc_id
    availability_zone = var.availability_zone
}