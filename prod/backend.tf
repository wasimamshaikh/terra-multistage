terraform {
  backend "s3" {
    bucket = "web-terra-jen2"
    key    = "terraform/prod"
    region = "us-east-2"
  }
}