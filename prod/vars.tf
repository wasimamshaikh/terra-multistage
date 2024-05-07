variable "REGION" {
  default = "us-east-2"
}

variable "VPC_CIDR" {
  default = "10.0.0.0/16"
}

variable "VPC_TAG" {
  type = map(any)
  default = {
    "Name" = "prod-vpc"
  }
}

variable "ZONE1" {
  default = "us-east-2a"
}

variable "ZONE2" {
  default = "us-east-2b"
}

variable "PUB_SUB_CIDR1" {
  default = "10.0.1.0/24"
}

variable "PUB_SUB_CIDR2" {
  default = "10.0.2.0/24"
}

variable "PRI_SUB_CIDR1" {
  default = "10.0.3.0/24"
}

variable "PRI_SUB_CIDR2" {
  default = "10.0.4.0/24"
}

variable "SUB_VPC_PUB_TAG" {
  type = map(any)
  default = {
    "Name" = "prod-sub-pub-1"
  }
}

variable "SUB_VPC_PUB2_TAG" {
  type = map(any)
  default = {
    "Name" = "prod-sub-pub-2"
  }
}

variable "SUB_VPC_PRI1_TAG" {
  type = map(any)
  default = {
    "Name" = "prod-sub-pri-1"
  }
}

variable "SUB_VPC_PRI2_TAG" {
  type = map(any)
  default = {
    "Name" = "prod-sub-pri-2"
  }
}

variable "IGW" {
  type = map(any)
  default = {
    "Name" = "prod-igw"
  }
}

variable "MYIP" {
  default = "103.170.216.70/32"
}

variable "SEC_GRP_TAG" {
  type = map(any)
  default = {
    "Name" = "prod-sg"
  }
}

variable "AMIS" {
  type = map(any)
  default = {
    us-east-2 = "ami-0ddda618e961f2270"
    us-east-1 = "ami-07caf09b362be10b8"
  }
}

variable "INSTANCE_TYPE" {
  default = "t2.micro"
}

variable "PUB_KEY" {
  default = "prodkey.pub"
}

variable "PRI_KEY" {
  default = "prodkey"
}

variable "DEV_KEY" {
  default = "prodkey"
}

variable "Instance_TAG" {
  type = map(any)
  default = {
    "Name" = "prod-instance"
  }
}