resource "aws_instance" "web_server_new" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name        = "web-server-${terraform.workspace}"
    Environment = var.environment
  }
}
