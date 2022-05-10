provider "aws" {
  version = ">= 2.28.1"
  region = var.region
}

module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"
  version = "3.2.0"

  bucket = var.bucket
  acl    = var.acl
  force_destroy = var.force_destroy
  versioning = var.versioning
  grant = var.grant
  object_lock_configuration = var.object_lock_configuration
  object_lock_enabled = var.object_lock_enabled
  restrict_public_buckets = var.restrict_public_buckets
  block_public_acls = var.block_public_acls
  block_public_policy = var.block_public_policy
  ignore_public_acls = var.block_public_acls
  
  tags = {
    Terraform   = "true"
    Environment = "dev"
  }

}