locals {
  routetable_name="rtb-${terraform.workspace}"
}
resource "aws_route_table" "public_rtb" {
  vpc_id = var.VPC_ID

  route {
    cidr_block = var.route_CIDR
    gateway_id = var.gateway_id
  }
  tags = { Name = local.routetable_name
  "Managed By" = "Terraform" }
}



#ROUTE TABLE ASSOCIATION 
resource "aws_route_table_association" "public_a" {
  subnet_id      = var.subnet_id
  route_table_id = aws_route_table.public_rtb.id
}

output "routetable_id" {
  value = aws_route_table.public_rtb.id
  
}