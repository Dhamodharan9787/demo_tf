output "instance_ip" {
  description = "Public IP of EC2 instance"
  value       = aws_instance.my_ec2-1.public_ip
}