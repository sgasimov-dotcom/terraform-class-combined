resource "aws_subnet" "private1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private_cidr1                   
  availability_zone = "${var.region}a"             # Deploys subnet to AZ 1
  tags = var.tags
}

resource "aws_subnet" "private2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private_cidr2
  availability_zone = "${var.region}b"
  tags = var.tags
}


resource "aws_subnet" "private3" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private_cidr3
  availability_zone = "${var.region}c"
  tags = var.tags
}

resource "aws_eip" "main" {
  vpc      = true
  tags = var.tags
}


resource "aws_nat_gateway" "example" {
  allocation_id = aws_eip.main.id
  subnet_id     = aws_subnet.public1.id
  tags = var.tags
}