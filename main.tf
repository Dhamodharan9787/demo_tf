provider "aws" {
    region = "us-east-1"
  
}
module "ec2" {
    source = "./modules/ec2"
    ami = "ami-08b5b3a93ed654d19"
    instance_type  = "t2.micro"
    instance_name  = "Terraform-EC2"
  
}
# output "ec2_instance_id" {
#   value = module.my_ec2-1.instance_id
# }
# output "ec2_public_ip" {
#   value = module.my_ec2-1.public_ip
# }
module "s3" {
  source              = "./modules/s3"
  bucket_name         = "my-terraform-s3-bucket12345"
  environment         = "production"
}
output "s3_bucket_id" {
  value = module.s3.bucket_id
}
output "s3_bucket_arn" {
  value = module.s3.bucket_arn
}