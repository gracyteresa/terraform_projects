resource "aws_instance" "example" {
  count         = 4
  ami           = var.ami_id
  instance_type = (var.instance_name[count.index] == "mongodb" || var.instance_name[count.index] == "mysql") ? "t3.micro" : "t3.small"
  tags = {
    Name = var.instance_name[count.index]

  }




}
