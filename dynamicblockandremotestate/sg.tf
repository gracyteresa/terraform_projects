resource "aws_security_group" "allow_all" {
  name        = "allow_http_https"
  description = "Security group to allow all inbound and outbound traffic"
  tags = {
    Name = "allow_hhtp_https"
  }

  dynamic "ingress" {
    for_each = var.ingress
    content {
      cidr_blocks = ingress.value.cidr_blocks
      from_port   = ingress.value.from_port
      protocol    = ingress.value.ip_protocol
      to_port     = ingress.value.to_port
    }
  }

}
resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.allow_all.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1"

}

