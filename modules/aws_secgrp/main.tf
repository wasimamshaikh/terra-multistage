resource "aws_security_group" "web-sg" {
  name        = "web-sg"
  description = "Sec group for web"
  vpc_id      = var.vpc_id
  tags = var.SEC_GRP_TAG
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
  security_group_id = aws_security_group.web-sg.id
  cidr_ipv4         = var.MYIP
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4-1" {
  security_group_id = aws_security_group.web-sg.id
  cidr_ipv4         = var.MYIP
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.web-sg.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}