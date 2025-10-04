locals {
  instance_type = var.useoflocals ? "t3.micro" : "t3.small"
  public_key    = file("${path.module}/deployer-key.pub")
}
