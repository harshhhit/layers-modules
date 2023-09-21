resource "aws_route_table" "routable" {
 vpc_id = var.vpc_id

  route {
   cidr_block = var.cidr_block
   gateway_id = var.igw_id 
  
  }

  tags = {
    Name = "routetable-${project_name}"
  
  }
}

