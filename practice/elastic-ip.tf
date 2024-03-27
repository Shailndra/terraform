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

/*
resource "aws_vpc_security_group_ingress_rule" "http_port" {
    security_group_id = aws_security_group.http_port.id
    cidr_ipv4 = "${aws_eip.lb.public_ip}/32"     #cross-referencing attibutes with string interpolation
    from_port = var.http_port      #taken from variables.tf
    ip_protocol = "tcp"
    to_port = var.http_port
}

resource "aws_vpc_security_group_ingress_rule" "ssh_port" {
    security_group_id = aws_security_group.ssh_port.id
    cidr_ipv4 = "${aws_eip.lb.public_ip}/32"     #cross-referencing attibutes with string interpolation
    from_port = var.ssh_port      #taken from variables.tf
    ip_protocol = "tcp"
    to_port = var.ssh_port
}

resource "aws_vpc_security_group_ingress_rule" "ftp_port" {
    security_group_id = aws_security_group.ftp_port.id
    cidr_ipv4 = "${aws_eip.lb.public_ip}/32"     #cross-referencing attibutes with string interpolation
    from_port = var.ftp_port      #taken from variables.tf
    ip_protocol = "tcp"
    to_port = var.ftp_port
}
*/