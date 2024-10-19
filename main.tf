provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "one" {
ami = "ami-06b21ccaeff8cd686"
instance_type = "t2.micro"

 tags = {
    Name = "possible"
  }
}
