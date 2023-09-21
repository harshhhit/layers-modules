# Create a VPC
resource "aws_vpc""vpc" {
  cidr_block           = [var.cidr_block]
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = "my-vpc-${var.project_name}"
  }
}
