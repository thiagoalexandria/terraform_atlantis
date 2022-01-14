provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket         = "terraform-tfstate-atlantis-demo"
    key            = "atlantis/demo.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}
