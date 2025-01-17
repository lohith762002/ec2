provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-0454e52560c7f5c55"
instance_type = "t2.medium"
vpc_security_group_ids = ["sg-03b3778957540ea86"]

 tags = {
    Name = var.instance_names[count.index]
  }
}

variable "instance_names" {
default = ["jenkins", "nexus", "tomcat-1", "tomcat-2"]
}
