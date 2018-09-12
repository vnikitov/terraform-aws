resource "aws_s3_bucket" "files-bucket" {
  bucket = "s3-files-vlad"
  acl    = "private"
  force_destroy = false
  
  versioning {
    enabled = false
  }
  
  tags {
    Environment = "Dev"
    Terraform = "true"
  }
}