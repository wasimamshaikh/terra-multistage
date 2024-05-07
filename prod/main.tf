module "vpc" {
  source   = "../modules/aws_vpc"
  VPC_CIDR = var.VPC_CIDR
  VPC_TAG  = var.VPC_TAG
}

module "subnet" {
  source           = "../modules/aws_subnet"
  vpc_id           = module.vpc.vpc_id
  ZONE1            = var.ZONE1
  ZONE2            = var.ZONE2
  PUB_SUB_CIDR1    = var.PUB_SUB_CIDR1
  PUB_SUB_CIDR2    = var.PUB_SUB_CIDR2
  PRI_SUB_CIDR1    = var.PRI_SUB_CIDR1
  PRI_SUB_CIDR2    = var.PRI_SUB_CIDR2
  SUB_VPC_PUB_TAG  = var.SUB_VPC_PUB_TAG
  SUB_VPC_PUB2_TAG = var.SUB_VPC_PUB2_TAG
  SUB_VPC_PRI1_TAG = var.SUB_VPC_PRI1_TAG
  SUB_VPC_PRI2_TAG = var.SUB_VPC_PRI2_TAG
}

module "igw" {
  source = "../modules/aws_igw"
  vpc_id = module.vpc.vpc_id
  IGW    = var.IGW
}

module "secgrp" {
  source      = "../modules/aws_secgrp"
  vpc_id      = module.vpc.vpc_id
  MYIP        = var.MYIP
  SEC_GRP_TAG = var.SEC_GRP_TAG
}

module "RouteTable" {
  source     = "../modules/aws_RT"
  vpc_id     = module.vpc.vpc_id
  igw_id     = module.igw.igw_id
  subnet1_id = module.subnet.subnet1_id
  subnet2_id = module.subnet.subnet2_id
}

module "instance" {
  source        = "../modules/aws_instance"
  DEV_KEY       = var.DEV_KEY
  PUB_KEY       = var.PUB_KEY
  AMIS          = var.AMIS
  REGION        = var.REGION
  INSTANCE_TYPE = var.INSTANCE_TYPE
  subnet1_id    = module.subnet.subnet1_id
  sec_grp_id    = module.secgrp.sec_grp_id
  Instance_TAG  = var.Instance_TAG
}