module "ec2_jumpbox" {
  source = "../terraform-aws-ec2-instance"

  name           = "jumpbox"
  instance_count = 1

  ami                         = "ami-dd3c0f36"
  instance_type               = "${var.instance_type}"
  monitoring                  = false
  vpc_security_group_ids      = ["${var.allow_all_egress}", "${var.allow_ssh_jumpbox}"]
  subnet_id                   = "${var.public_subnet_1a}"
  associate_public_ip_address = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}

module "ec2_frontend" {
  source = "../terraform-aws-ec2-instance"

  name           = "front-end"
  instance_count = 1

  ami                         = "ami-dd3c0f36"
  instance_type               = "${var.instance_type}"
  monitoring                  = false
  vpc_security_group_ids      = ["${var.allow_all_egress}", "${var.allow_icmp}", "${var.allow_ssh}"]
  subnet_id                   = "${var.private_subnet_1a}"

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}

module "ec2_backend" {
  source = "../terraform-aws-ec2-instance"

  name           = "backend"
  instance_count = 1

  ami                         = "ami-dd3c0f36"
  instance_type               = "${var.instance_type}"
  monitoring                  = false
  vpc_security_group_ids      = ["${var.allow_all_egress}", "${var.allow_icmp}", "${var.allow_ssh}"]
  subnet_id                   = "${var.private_subnet_1b}"

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}