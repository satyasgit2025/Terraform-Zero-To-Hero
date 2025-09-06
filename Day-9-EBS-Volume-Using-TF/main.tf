provider "aws" {
  region = "us-east-1"
}

resource "aws_ebs_volume" "xfusion_volume" {
  availability_zone = "us-east-1a"
  size              = 2
  type              = "gp3"
  tags = {
    Name = "xfusion-volume"
  }
}
