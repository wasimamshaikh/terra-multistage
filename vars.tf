variable "REGION" {
}

variable "VPC_CIDR" {
}

variable "VPC_TAG" {
  type = map(any)
  default = {
    "Name" = "web-vpc"
  }
}

variable "ZONE1" {
  default = "us-east-2a"
}

variable "ZONE2" {
  default = "us-east-2b"
}

variable "PUB_SUB_CIDR1" {
}

variable "PUB_SUB_CIDR2" {
}

variable "PRI_SUB_CIDR1" {
}

variable "PRI_SUB_CIDR2" {
}

variable "SUB_VPC_PUB_TAG" {
  type = map(any)
  default = {
    "Name" = "web-sub-pub-1"
  }
}

variable "SUB_VPC_PUB2_TAG" {
  type = map(any)
  default = {
    "Name" = "web-sub-pub-2"
  }
}

variable "SUB_VPC_PRI1_TAG" {
  type = map(any)
  default = {
    "Name" = "web-sub-pri-1"
  }
}

variable "SUB_VPC_PRI2_TAG" {
  type = map(any)
  default = {
    "Name" = "web-sub-pri-2"
  }
}

variable "IGW" {
  type = map(any)
  default = {
    "Name" = "web-igw"
  }
}

variable "MYIP" {
  default = "103.170.216.101/32"
}

variable "SEC_GRP_TAG" {
  type = map(any)
  default = {
    "Name" = "web-sg"
  }
}

variable "AMIS" {
  type = map(any)
  default = {
    us-east-2 = "ami-0ddda618e961f2270"
    us-east-1 = "ami-07caf09b362be10b8"
  }
}

variable "key_pair_name" {
  description = "The key pair name for the environment"
  type        = string
}

variable "INSTANCE_TYPE" {
}

variable "PUB_KEY" {
  default = "webkey.pub"
}

variable "PRI_KEY" {
  default = "webkey"
}

variable "Environment" {
}

variable USER {
}

variable "sourcefile" {
}

variable "destfile" {
}

variable "chmodfile" {
}

variable "runfile" {
}