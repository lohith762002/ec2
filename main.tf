provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-04a37924ffe27da53"
instance_type = "t2.medium"
vpc_security_groups_ids = ["sg-041e08f4412b38651"]

 tags = {
    Name = var.instance_names[count.index]
  }
}

variable "instance_names" {
default = ["jenkins", "nexus", "tomcat-1", "tomcat-2"]
}
