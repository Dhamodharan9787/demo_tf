resource "aws_instance" "my_ec2-1" {
  ami           = var.ami
  instance_type = var.instance_type 
  tags = {
    Name = var.instance_name
  }
}