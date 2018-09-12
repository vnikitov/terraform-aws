resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow ssh traffic from jumpbox"
  vpc_id      = "${var.vpc_01}"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["172.16.1.143/32"]
  }

  tags {
    Name = "allow_ssh"
  }
}

resource "aws_security_group" "allow_icmp" {
  name        = "allow_icmp"
  description = "Allow icmp traffic from jumpbox"
  vpc_id      = "${var.vpc_01}"

  ingress {
    from_port   = "-1"
    to_port     = "-1"
    protocol    = "icmp"
    cidr_blocks = ["172.16.1.143/32"]
  }

  tags {
    Name = "allow_icmp"
  }
}

resource "aws_security_group" "allow_ssh_jumpbox" {
  name        = "allow_ssh_jumpbox"
  description = "Allow ssh traffic to jumpbox"
  vpc_id      = "${var.vpc_01}"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["95.158.129.162/32"]
  }

  tags {
    Name = "allow_ssh_to_jumpbox"
  }
}

resource "aws_security_group" "allow_all_egress" {
  name        = "allow_all_egress"
  description = "Allow all outbount traffic"
  vpc_id      = "${var.vpc_01}"

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
  
  tags {
    Name = "allow_all_egress"
  }
}

