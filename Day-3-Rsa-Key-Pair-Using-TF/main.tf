provider "aws" {
  region                      = "us-east-1"
  skip_credentials_validation = true
  skip_requesting_account_id  = true
  s3_use_path_style           = true

  endpoints {
    ec2            = "http://aws:4566"
    iam            = "http://aws:4566"
    sts            = "http://aws:4566"
    # Include other endpoints if needed by your environment
  }
}

resource "tls_private_key" "datacenter_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "datacenter_kp" {
  key_name   = "datacenter-kp"
  public_key = tls_private_key.datacenter_key.public_key_openssh
}

resource "local_file" "private_key_file" {
  content         = tls_private_key.datacenter_key.private_key_pem
  filename        = "/home/bob/datacenter-kp.pem"
  file_permission = "0600"
}

