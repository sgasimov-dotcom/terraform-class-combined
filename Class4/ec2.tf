#   Creates  EC2 Instance
resource "aws_instance" "web" {
  ami           = data.aws_ami.amazon.id
  instance_type = var.instance_type
  key_name      = aws_key_pair.automation.key_name
}
