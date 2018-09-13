# Variables
variable "region" {
  default = "eu-central-1"
}
variable "profile" {
  description = "AWS credentials profile"
  default     = "default"
}

variable "instance_type" {
  default = "t2.micro"
}


# VPC
variable "vpc_01" {
  description = "VPC ID"
  default     = "vpc-0428ccc1eca7dc86b"
}

variable "private_subnet_1a" {
  default = "subnet-057222ef5688f5eab"
}

variable "private_subnet_1b" {
  default = "subnet-0d864dc76cd6b75db"
}

variable "public_subnet_1a" {
  default = "subnet-007bab726f78b3ad1"
}

# Security Groups

variable "allow_ssh_jumpbox" {
  default = "sg-0e18f7893d9414098"
}

variable "allow_icmp" {
  default = "sg-021718f621e5fafa3"
}

variable "allow_ssh" {
  default = "sg-08a814004997ee0b1"
}

variable "allow_all_egress" {
  default = "sg-0827a456bbaa33f76"
}

variable "key_pair_jump" {
  default = "jump-ec2"
}