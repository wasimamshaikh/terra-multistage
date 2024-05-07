variable "REGION" {
  default = "us-east-2"
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
  default = "webkey.pub"
}

variable "PRI_KEY" {
  default = "webkey"
}

variable "DEV_KEY" {
  type = string
}

variable "subnet1_id" {
  type = string
}

variable "sec_grp_id" {
  type = string
}

variable "sourcefile" {
  type = string
}

variable "destfile" {
  type = string
}

variable "chmodfile" {
  type = string
}

variable "runfile" {
  type = string
}

variable "DEV_PRI_KEY" {
  type = string
}

variable "Instance_TAG" {
  type = map(any)
  default = {
    "Name" = "web-instance"
  }
}

variable USER {
  default = "ec2-user"
}