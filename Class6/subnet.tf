resource "aws_subnet" "public1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public_cidr1
  map_public_ip_on_launch = true
  tags = var.tags
}