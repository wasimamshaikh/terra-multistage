variable "VPC_CIDR" {
  default = "10.0.0.0/16"
}

variable "VPC_TAG" {
  type = map(any)
  default = {
    "Name" = "web-vpc"
  }
}