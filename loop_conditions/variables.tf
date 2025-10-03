variable "ami_id" {
  type    = string
  default = "ami-0360c520857e3138f"

}

variable "instance_name" {
  type    = list(any)
  default = ["mongodb", "mysql", "oracle", "sqlserver"]
}
