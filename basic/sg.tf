resource "aws_security_group" "allow_all" {
  name        = "allow_all"
  description = "Security group to allow all inbound and outbound traffic"

}
resource "aws_vpc_security_group_ingress_rule" "allow_all_ipv4" {
  security_group_id = aws_security_group.allow_all.id
  cidr_ipv4         = var.sg_cidr
  from_port         = 0
  ip_protocol       = "tcp"
  to_port           = 0
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.allow_all.id
  cidr_ipv4         = var.sg_cidr
  ip_protocol       = "-1"

}
