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
  default     = "vpc-0a2e4560b1de77cb8"
}

variable "private_subnet_1a" {
  default = "subnet-0cb991202c92c9204"
}

variable "private_subnet_1b" {
  default = "subnet-00603a544b32db10e"
}

variable "public_subnet_1a" {
  default = "subnet-05f385a09faddb75e"
}

# Security Groups

variable "allow_ssh_jumpbox" {
  default = "sg-09a08602328208d5a"
}

variable "allow_icmp" {
  default = "sg-08515df4bb59b5e90"
}

variable "allow_ssh" {
  default = "sg-06c399a218cba5a73"
}

variable "allow_all_egress" {
  default = "sg-0eccee5a1fd1f1275"
}