data "aws_ami" "example" {

  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023.*-kernel-6.1-x86_64"]
  }
}
data "aws_vpc" "selected" {
  default = true
}

resource "aws_security_group" "allow_all" {
  name        = "allow_http"
  description = "Security group to allow all inbound and outbound traffic"
  vpc_id      = data.aws_vpc.selected.id
  tags = {
    Name = "allow_http"
  }

}
resource "aws_vpc_security_group_ingress_rule" "allow_http" {
  security_group_id = aws_security_group.allow_all.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80

}

resource "aws_vpc_security_group_egress_rule" "allow_http" {
  security_group_id = aws_security_group.allow_all.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1"

}


output "ami_id" {
  value = data.aws_ami.example.id
}


output "vpc_id" {
  value = data.aws_vpc.selected.id
}
