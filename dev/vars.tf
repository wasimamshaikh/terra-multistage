variable "DEV_REGION" {
  default = "us-east-2"
}

variable "DEV_VPC_CIDR" {
  default = "10.0.0.0/16"
}

variable "DEV_VPC_TAG" {
  type = map(any)
  default = {
    "Name" = "web-vpc"
  }
}

variable "DEV_ZONE1" {
  default = "us-east-2a"
}

variable "DEV_ZONE2" {
  default = "us-east-2b"
}

variable "DEV_PUB_SUB_CIDR1" {
  default = "10.0.1.0/24"
}

variable "DEV_PUB_SUB_CIDR2" {
  default = "10.0.2.0/24"
}

variable "DEV_PRI_SUB_CIDR1" {
  default = "10.0.3.0/24"
}

variable "DEV_PRI_SUB_CIDR2" {
  default = "10.0.4.0/24"
}

variable "DEV_SUB_VPC_PUB_TAG" {
  type = map(any)
  default = {
    "Name" = "web-sub-pub-1"
  }
}

variable "DEV_SUB_VPC_PUB2_TAG" {
  type = map(any)
  default = {
    "Name" = "web-sub-pub-2"
  }
}

variable "DEV_SUB_VPC_PRI1_TAG" {
  type = map(any)
  default = {
    "Name" = "web-sub-pri-1"
  }
}

variable "DEV_SUB_VPC_PRI2_TAG" {
  type = map(any)
  default = {
    "Name" = "web-sub-pri-2"
  }
}

variable "DEV_IGW" {
  type = map(any)
  default = {
    "Name" = "web-igw"
  }
}

variable "DEV_MYIP" {
  default = "103.170.216.70/32"
}

variable "DEV_SEC_GRP_TAG" {
  type = map(any)
  default = {
    "Name" = "web-sg"
  }
}

variable "DEV_AMIS" {
  type = map(any)
  default = {
    us-east-2 = "ami-0ddda618e961f2270"
    us-east-1 = "ami-07caf09b362be10b8"
  }
}

variable "DEV_INSTANCE_TYPE" {
  default = "t2.micro"
}

variable "DEV_PUB_KEY" {
  default = "webkey.pub"
}

variable "DEV_PRI_KEY" {
  default = "webkey"
}

variable "DEV_KEY" {
  default = "devkey"
}

variable "DEV_Instance_TAG" {
  type = map(any)
  default = {
    "Name" = "dev-instance"
  }
}