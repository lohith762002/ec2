provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-04a37924ffe27da53"
instance_type = "t2.medium"
vpc_security_group_ids = ["sg-03b3778957540ea86"]

 tags = {
    Name = var.instance_names[count.index]
  }
}

variable "instance_names" {
default = ["jenkins", "nexus", "tomcat-1", "tomcat-2"]
}
