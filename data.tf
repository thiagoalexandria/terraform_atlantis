data "aws_subnet" "priv1" {
  filter {
    name   = "tag:Name"
    values = ["lab-us-east-1c"]
  }
}

data "aws_subnet" "priv2" {
  filter {
    name   = "tag:Name"
    values = ["lab-us-east-1f"]
  }
}

data "aws_vpc" "app" {
  filter {
    name   = "tag:Name"
    values = ["vpc-app"]
  }
}
