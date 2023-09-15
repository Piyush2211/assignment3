terraform {
  backend "s3" {
    bucket = "piyush-new"
    key    = "piyush-resources.tfstate"
    region = "ap-south-1"
  }
}