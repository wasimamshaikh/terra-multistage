terraform {
  backend "s3" {
    bucket = "web-terra-jen2"
    key    = "terraform/dev"
    region = "us-east-2"
  }
}