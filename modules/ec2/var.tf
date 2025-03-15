variable "instance_type" {
  description = "Instance type for EC2"
  type        = string
}
variable "ami" {
  description = "The AMI ID for the instance"
  type        = string
}
variable "instance_name" {
  description = "Name tag for the instance"
  type        = string
}