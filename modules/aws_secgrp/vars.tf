variable "vpc_id" {
  type = string
}

variable "MYIP" {
  default = "103.170.216.70/32"
}

variable "SEC_GRP_TAG" {
  type = map(any)
  default = {
    "Name" = "web-sg"
  }
}