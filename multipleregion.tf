provider "aws" {
    alias = "ap-south-1"
    region = "ap-south-1"
  
}

provider "aws" {
    alias = "us-east-1"
    region = "us-east-1"
  
}
resource "aws_instance" "first" {
    ami = "ami-007020fd9c84e18c7"
    instance_type = "t2.micro"
    provider = "aws.ap-south-1"
}


resource "aws_instance" "second" {
    ami = "ami-007020fd9c84e18c7"
    instance_type = "t2.micro"
    provider = "aws.us-east-1"
  
}