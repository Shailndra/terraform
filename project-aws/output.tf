output "public_instance" {
  description = "public ec2 machine"
  value       = aws_instance.ec2.public_ip
}


output "public_instancedns" {
  description = "public ec2 machine dns"
  value       = aws_instance.ec2.public_dns
}