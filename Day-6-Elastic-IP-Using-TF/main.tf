terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1" # change if needed
}

# Allocate an Elastic IP in a VPC
resource "aws_eip" "xfusion_eip" {
  domain = "vpc" # required for EC2-VPC
  tags = {
    Name = "xfusion-eip"
  }
}

output "xfusion_eip_address" {
  value = aws_eip.xfusion_eip.public_ip
}

output "xfusion_eip_allocation_id" {
  value = aws_eip.xfusion_eip.id
}
