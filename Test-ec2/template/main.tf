provider "aws" {
  version = ">= 3.6.3"
  region  = var.region
}
module "ec2_instance" {
  source        = "terraform-aws-modules/ec2-instance/aws"
  version       = "~> 3.0"
  name          = var.name
  ami           = var.ami
  instance_type = var.instance_type
  monitoring    = true
  vpc_security_group_ids = var.vpc_security_group_ids
  subnet_id = var.subnet_id
  tags = {
    Terraform   = "enviroment"
    Environment = "dev"
  }
 
}
 