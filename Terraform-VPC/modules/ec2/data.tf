data "aws_ami" "amazon-2" {
  most_recent = true

  filter {
    name   = "owner-alias"
    values = ["amazon2-ami-hvm-*-x86_64-ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["amazon"]
}

data "aws_availability_zones" "avaialable" {
    state = "available"
}