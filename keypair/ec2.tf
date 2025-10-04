resource "aws_key_pair" "deployer" {
  key_name = "deployer-key"
  #public_key = file("${path.module}/deployer-key.pub")(without locals we can define it here, it takes from that path)
  public_key = local.public_key
}
resource "aws_instance" "ec22" {
  ami           = "ami-0360c520857e3138f"
  instance_type = local.instance_type
  key_name      = aws_key_pair.deployer.key_name
  tags = {
    Name = "ec22"
  }

}

