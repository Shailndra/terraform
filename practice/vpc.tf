# Create a VPC

resource "aws_default_vpc" "random" {
  tags = {
    Name = "Default VPC"
  }
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}


