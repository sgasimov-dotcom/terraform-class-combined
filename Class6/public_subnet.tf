resource "aws_subnet" "public1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public_cidr1
  map_public_ip_on_launch = true                   # Assigns Public IP for instance  
  availability_zone = "${var.region}a"             # Deploys subnet to AZ 1
  tags = var.tags
}

resource "aws_subnet" "public2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public_cidr2
  map_public_ip_on_launch = true
  availability_zone = "${var.region}b"
  tags = var.tags
}


resource "aws_subnet" "public3" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public_cidr3
  map_public_ip_on_launch = true
  availability_zone = "${var.region}c"
  tags = var.tags
}
