resource "aws_subnet" "web-sub-pub-1" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.PUB_SUB_CIDR1
  map_public_ip_on_launch = "true"
  availability_zone       = var.ZONE1
  tags = var.SUB_VPC_PUB_TAG
}

resource "aws_subnet" "web-sub-pub-2" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.PUB_SUB_CIDR2
  map_public_ip_on_launch = "true"
  availability_zone       = var.ZONE2
  tags = var.SUB_VPC_PUB2_TAG
}

resource "aws_subnet" "web-sub-pri-1" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.PRI_SUB_CIDR1
  map_public_ip_on_launch = "true"
  availability_zone       = var.ZONE1
  tags = var.SUB_VPC_PRI1_TAG
}

resource "aws_subnet" "web-sub-pri-2" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.PRI_SUB_CIDR2
  map_public_ip_on_launch = "true"
  availability_zone       = var.ZONE2
  tags = var.SUB_VPC_PRI2_TAG
}