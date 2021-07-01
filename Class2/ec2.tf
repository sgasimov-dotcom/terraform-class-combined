resource "aws_instance" "web" {
  ami           = "ami-0277b52859bac6f4b"
  instance_type = "t3.micro"
  count = 3
  availability_zone = "us-east-2a"
  associate_public_ip_address = true
  monitoring = true 
}

