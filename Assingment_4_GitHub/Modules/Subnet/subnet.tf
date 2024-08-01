locals {
  subnet_name="${terraform.workspace}-subnet"
}

resource "aws_subnet" "public_a_subnet" {
  cidr_block        = var.public_subnet_CIDR
  vpc_id            = var.VPC_ID
  availability_zone = var.availability_zone

  tags = { 
    Name = local.subnet_name
  "Managed By" = "Terraform"}
}

output "subnet_id" {
  value = aws_subnet.public_a_subnet.id
  
}