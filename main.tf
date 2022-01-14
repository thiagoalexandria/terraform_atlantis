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

resource "aws_s3_bucket" "atlantis_demo" {
    bucket = "thiago-atlantis-demostrate-site"
    acl    = "private"

  tags = {
    Name        = "Atlantis demo"
    Environment = "Dev"
  }
}
