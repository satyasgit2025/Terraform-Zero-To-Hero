provider "aws" {
  region = "us-east-1" # Change region as per your requirement
}

# 1. Create an RSA key pair named devops-kp
resource "tls_private_key" "devops_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "devops_keypair" {
  key_name   = "devops-kp"
  public_key = tls_private_key.devops_key.public_key_openssh
}

# 2. Get the default security group ID
data "aws_security_group" "default" {
  name   = "default"
  vpc_id = data.aws_vpc.default.id
}

data "aws_vpc" "default" {
  default = true
}

# 3. Create the EC2 instance
resource "aws_instance" "devops_ec2" {
  ami           = "ami-0c101f26f147fa7fd" # Amazon Linux AMI
  instance_type = "t2.micro"
  key_name      = aws_key_pair.devops_keypair.key_name

  vpc_security_group_ids = [data.aws_security_group.default.id]

  tags = {
    Name = "devops-ec2"
  }
}

# 4. Save the private key locally (optional)
resource "local_file" "private_key" {
  content  = tls_private_key.devops_key.private_key_pem
  filename = "${path.module}/devops-kp.pem"
}
