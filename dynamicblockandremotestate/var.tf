variable "ingress" {
  type = list(any)
  default = [
    {
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 80
      ip_protocol = "tcp"
      to_port     = 80

    },
    {
      cidr_blocks = ["0.0.0.0/0"]
      from_port   = 443
      ip_protocol = "tcp"
      to_port     = 443

    }

  ]
}
