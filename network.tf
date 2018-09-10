module "vpc" {
  source = "../terraform-aws-vpc"

  name = "vpc-01"
  cidr = "172.16.0.0/16"

  azs             = ["eu-central-1a", "eu-central-1b", "eu-central-1c"]
  private_subnets = ["172.16.2.0/24", "172.16.3.0/24"]
  public_subnets  = ["172.16.1.0/24"]

  enable_nat_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}