# Pulls   AWS   AMI 
data "aws_ami" "amazon" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-2.0.20210617.0-x86_64-gp2*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["137112412989"] # Canonical
}

#   Creates  EC2 Instance
resource "aws_instance" "web" {
  ami           = data.aws_ami.amazon.id
  instance_type = "t3.micro"
}
