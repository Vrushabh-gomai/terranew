provider "aws" {
    region = "var.region"
  
}

resource "aws_instance" "instance1" {
    ami = "var.ami"
    instance_type = "var.instance_type"
    key_name = "var.key_name"
    tags = "var.tags"
  
}
variable "region" {
    type = string
    description = "region string"
    default = "ap-south-1"
  
}
variable "ami" {
    type = string
    description = "ami id"
    default = "ami-007020fd9c84e18c7"
  
}

variable "instance_type" {
    type = string
    description = "type"
    default = "t2.micro"
  
}
variable "key_name" {
    type = string
    description = "key"
    default = "nvg"
  
}
variable "tags" {
    type = map
    description = "map"
    default = {
        name = "ubuntu"
        environment="staging"
        project="my project"
    }
  
}

output "created server" {
     value = "yes"
}