variable "ami_id" {
  type    = string
  default = "ami-0360c520857e3138f"

}

variable "instance_type" {

  default = "t3.micro"
}

variable "sg_cidr" {
  type    = string
  default = "0.0.0.0/0"
}

variable "tags" {
  type = map(any)
  default = {
    Name        = "ec2_terraform"
    environment = "dev"
    terraform   = "true"
    project     = "ec2-setup"
    component   = "web"
  }
}
