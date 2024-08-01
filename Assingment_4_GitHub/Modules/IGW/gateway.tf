locals {
  igw_name = "igw-${terraform.workspace}"
}

resource "aws_internet_gateway" "day3_igw" {
  vpc_id = var.VPC_ID

  tags = {
    Name = local.igw_name
    "Managed By" = "Terraform"
  }
}


resource "aws_eip" "nat_eip" {

  domain = "vpc"
}

output "igw_id" {
  value = aws_internet_gateway.day3_igw.id
  
}
