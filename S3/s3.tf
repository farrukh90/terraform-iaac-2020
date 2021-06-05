provider "aws" {
    region = "us-east-1"
}



resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket-farrukh"
  acl    = "private"
  versioning {
      enabled = false
  }

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    Team        = "DevOps"
  }
}