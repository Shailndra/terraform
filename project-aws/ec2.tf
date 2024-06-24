resource "aws_instance" "ec2" {
  #ami = "ami-0eaf7c3456e7b5b68"
  ami             = data.aws_ami.amzlinux.id
  instance_type   = var.instance_type
  key_name        = var.instance-keypair
  security_groups = [aws_vpc_security_group_ingress_rule.allow_tls_ipv4.id, aws_security_group.allow_tls.id]
  user_data       = file("${path.module}/server.sh")
  tags = {
    "Name" = "EC2 DemoInstance"
  }
}