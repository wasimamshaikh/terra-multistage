module "vpc" {
  source   = "../modules/aws_vpc"
  VPC_CIDR = var.DEV_VPC_CIDR
  VPC_TAG  = var.DEV_VPC_TAG
}

module "subnet" {
  source           = "../modules/aws_subnet"
  vpc_id           = module.vpc.vpc_id
  ZONE1            = var.DEV_ZONE1
  ZONE2            = var.DEV_ZONE2
  PUB_SUB_CIDR1    = var.DEV_PUB_SUB_CIDR1
  PUB_SUB_CIDR2    = var.DEV_PUB_SUB_CIDR2
  PRI_SUB_CIDR1    = var.DEV_PRI_SUB_CIDR1
  PRI_SUB_CIDR2    = var.DEV_PRI_SUB_CIDR2
  SUB_VPC_PUB_TAG  = var.DEV_SUB_VPC_PUB_TAG
  SUB_VPC_PUB2_TAG = var.DEV_SUB_VPC_PUB2_TAG
  SUB_VPC_PRI1_TAG = var.DEV_SUB_VPC_PRI1_TAG
  SUB_VPC_PRI2_TAG = var.DEV_SUB_VPC_PRI2_TAG
}

module "igw" {
  source = "../modules/aws_igw"
  vpc_id = module.vpc.vpc_id
  IGW    = var.DEV_IGW
}

module "secgrp" {
  source      = "../modules/aws_secgrp"
  vpc_id      = module.vpc.vpc_id
  MYIP        = var.DEV_MYIP
  SEC_GRP_TAG = var.DEV_SEC_GRP_TAG
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
  PUB_KEY       = var.DEV_PUB_KEY
  AMIS          = var.DEV_AMIS
  REGION        = var.DEV_REGION
  INSTANCE_TYPE = var.DEV_INSTANCE_TYPE
  subnet1_id    = module.subnet.subnet1_id
  sec_grp_id    = module.secgrp.sec_grp_id
  Instance_TAG  = var.DEV_Instance_TAG
}