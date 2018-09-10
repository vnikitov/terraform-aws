# Configure the AWS Provider
provider "aws" {
  profile    = "${var.profile}"
  region     = "${var.region}"
}

# Configure Terraform remote state backend
terraform {
  backend "s3" {
    bucket = "tf-state-vlad"
    key    = "terraform/terraform.tfstate"
    region = "eu-central-1"
  }
}

resource "aws_s3_bucket" "state-bucket" {
  bucket = "tf-state-vlad"
  acl    = "private"
  force_destroy = false
  
  versioning {
    enabled = true
  }
}

