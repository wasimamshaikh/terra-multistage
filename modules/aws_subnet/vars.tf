variable "ZONE1" {
  default = "us-east-2a"
}

variable "ZONE2" {
  default = "us-east-2b"
}

variable "vpc_id" {
  type = string
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