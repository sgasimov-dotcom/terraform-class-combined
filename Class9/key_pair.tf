provider "aws" {
    region = "us-east-1"
}


resource "aws_key_pair" "class2" {
  key_name   = "class2-backend"
  public_key = file("~/.ssh/id_rsa.pub")
  tags = {
    Name      = "Web"
    CreatedBy = "Engineer"
    Team      = "DevOps"
  }
}