variable "vpc_id" {
  type = string
}

variable "MYIP" {
  default = "103.170.216.114/32"
}

variable "SEC_GRP_TAG" {
  type = map(any)
  default = {
    "Name" = "web-sg"
  }
}