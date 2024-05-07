resource "aws_route_table" "web-pub-RT" {
  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.igw_id
  }
}

resource "aws_route_table_association" "web-pub-1-a" {
  subnet_id      = var.subnet1_id
  route_table_id = aws_route_table.web-pub-RT.id
}

resource "aws_route_table_association" "web-pub-2-a" {
  subnet_id      = var.subnet2_id
  route_table_id = aws_route_table.web-pub-RT.id
}