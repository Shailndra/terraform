resource "aws_internet_gateway" "random-igw" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = "random-vpc-IGW"
    }
}