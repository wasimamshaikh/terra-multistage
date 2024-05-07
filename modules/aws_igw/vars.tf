variable "vpc_id" {
  type = string
}

variable "IGW" {
  type = map(any)
  default = {
    "Name" = "web-igw"
  }
}