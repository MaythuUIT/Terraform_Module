
locals {
  vpc_name="${terraform.workspace}-vpc"
}

resource "aws_vpc" "project_vpc" {
  cidr_block = var.VPC_CIDR

  tags       = { Name = local.vpc_name 
  "Managed By" = "Terraform"}
}

output "vpc_id" {
  value = aws_vpc.project_vpc.id
  
}
