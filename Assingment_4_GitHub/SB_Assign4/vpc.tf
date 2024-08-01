module "VPC" {
  source = "../Modules/VPC"
  VPC_CIDR = var.VPC_CIDR
  vpc_name = var.vpc_name
}