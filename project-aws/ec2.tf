resource "aws_instance" "ec2" {
    ami = "ami-00beae93a2d981137"
    instance_type = "t3a.medium"
    user_data = file("${path.module}/server.sh")
    tags = {
        "Name" = "EC2 DemoInstance"
    } 
}