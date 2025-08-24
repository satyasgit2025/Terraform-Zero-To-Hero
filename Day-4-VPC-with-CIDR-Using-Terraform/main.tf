# Specify the AWS provider and region
provider "aws" {
  region = "us-east-1"
}

# Create the VPC
resource "aws_vpc" "datacenter_vpc" {
  cidr_block           = "192.168.0.0/24"
  instance_tenancy     = "default"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "datacenter-vpc"
  }
}
