provider "aws" {
  region = "us-east-1"  # Replace with your desired region
}

resource "aws_ami_from_instance" "xfusion_ami" {
  name               = "xfusion-ec2-ami"
  source_instance_id = "i-xxxxxxxxxxxxxxxxx"  # Replace with the correct instance ID of xfusion-ec2
  description        = "AMI created from xfusion-ec2"
  tags = {
    Name = "xfusion-ec2-ami"
  }
}

# Ensure the AMI is in "available" state before completing the process
data "aws_ami" "xfusion_ami_available" {
  most_recent = true
  owners      = ["self"]
  filter {
    name   = "name"
    values = ["xfusion-ec2-ami"]
  }

  depends_on = [aws_ami_from_instance.xfusion_ami]
}

output "ami_id" {
  value = data.aws_ami.xfusion_ami_available.id
}
