terraform {
  
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"

  shared_config_files = ["/home/ubuntu/.aws/conf"]
  shared_credentials_files = ["/home/ubuntu/.aws/creds"]
}

}
resource "aws_instance" "vru" {
    ami = "ami-007020fd9c84e18c7"
    instance_type = "t2.micro"
    key_name = "nvg"
  
}