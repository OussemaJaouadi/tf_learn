# outputs.tf

output "ec2_instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.nginx_server.public_ip
}

output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main_vpc.id
}

output "subnet_id" {
  description = "Subnet ID for the public subnet"
  value       = aws_subnet.public_subnet.id
}

output "security_group_id" {
  description = "Security Group ID for Nginx server"
  value       = aws_security_group.nginx_sg.id
}

output "private_key" {
  value     = tls_private_key.key_pair.private_key_pem
  sensitive = true
}