# Create a VPC

resource "aws_default_vpc" "random" {
  tags = {
    Name = "Default VPC"
  }
}

resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_instance" "ec2-1" {
    instance_type = "t3a.medium"
    ami = "ami-0d7a109bf30624c99"
}

resource "aws_instance" "ec2-2" {
    instance_type = "t3a.medium"
    ami = "ami-0d7a109bf30624c99"
}


