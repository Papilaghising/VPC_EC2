output "public_ip" {
  description = "public_ip of the ec2 instance"
  value       = aws_instance.ec2_instance[*].public_ip
}