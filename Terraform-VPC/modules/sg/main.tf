resource "aws_security_group" "sg" {
  name        = "sg"
  description = "Allow HTTP, SSH inbound traffic"
  vpc_id      = var.vpc_id #one module cannot access another module's variables directly so you have to get those attributes from output.tf/ create variable.tf file to assign default value and assign values fron output file  

  ingress {
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
    description      = "SSH"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "MySecurityGroup"
  }
}