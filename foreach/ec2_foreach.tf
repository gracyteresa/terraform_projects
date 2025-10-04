resource "aws_instance" "example" {
  ami           = var.ami_id
  for_each      = var.instance_type
  instance_type = each.value

  tags = {
    Name = each.key
  }
}
