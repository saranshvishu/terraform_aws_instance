provider "aws" {
  region = "us-east-1"
}

locals {
  env = "test"
}

resource "aws_instance" "one" {
  count         = 2
  ami           = "ami-0866a3c8686eaeeba"
  instance_type = "t2.micro"
  tags = {
    Name = "saransh"
  }
}
