provider "aws" {
  region = "us-east-1"
}

# Create VPC with IPv6 CIDR
resource "aws_vpc" "xfusion_vpc" {
  cidr_block                     = "10.0.0.0/16"
  assign_generated_ipv6_cidr_block = true

  tags = {
    Name = "xfusion-vpc"
  }
}
