resource "aws_internet_gateway" "web-igw" {
  vpc_id = var.vpc_id
  tags = var.IGW
}