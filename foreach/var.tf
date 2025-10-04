variable "ami_id" {
  type    = string
  default = "ami-0360c520857e3138f"

}
variable "instance_type" {
  type = map(string)
  default = {
    "first"  = "t3.micro"
    "second" = "t3.small"
    "third"  = "t3.micro"
  }
}
