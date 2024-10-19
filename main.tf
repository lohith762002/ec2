provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "one" {
ami = "ami-04a37924ffe27da53"
instance_type = "t2.micro"

 tags = {
    Name = "possible"
  }
}
