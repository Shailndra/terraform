resource "aws_eip" "lb" {
  domain   = "vpc"
}


resource "aws_vpc_security_group_ingress_rule" "random" {
    security_group_id = aws_security_group.random.id

    cidr_ipv4 = "${aws_eip.lb.public_ip}/32"     #cross-referencing attibutes with string interpolation
    from_port = 443
    ip_protocol = "tcp"
    to_port = 443
}