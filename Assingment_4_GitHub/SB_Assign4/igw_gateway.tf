module "IGW" {
source = "../Modules/IGW"
VPC_ID = module.VPC.vpc_id

}