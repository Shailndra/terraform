resource "aws_instance" "ec2-1" {
    instance_type = "t3a.medium"
    ami = "ami-0d7a109bf30624c99"
}

resource "aws_instance" "ec2-2" {
    instance_type = "t3a.medium"
    ami = "ami-0d7a109bf30624c99"
}

# Create a new host with instance type of c5.18xlarge with Auto Placement
# and Host Recovery enabled.
resource "aws_ec2_host" "ec2-test" {
  instance_type     = "c5.18xlarge"
  availability_zone = "us-west-2a"
  host_recovery     = "on"
  auto_placement    = "on"
}


resource "aws_ec2_host" "test-ec2" {
  instance_type     = "c5.18xlarge"
  availability_zone = "us-west-2a"
}

data "aws_ec2_host" "test" {
  host_id = aws_ec2_host.test-ec2.id
}
