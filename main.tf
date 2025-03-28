provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-01bd9d8f06d29d6a0"
instance_type = "t2.medium"
key_name = "nissi05"
vpc_security_group_ids = ["sg-078d5c46a3a27aa33"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "AppServer-1", "AppServer-2", "Monitoring server"]
}
