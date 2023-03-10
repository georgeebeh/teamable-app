terraform {
required_providers {
  aws = {
    source = "hashicorp/aws"
    version = "~> 4.16"
   } 
}

required_version = ">= 1.2.0"
}

provider "aws" {
    region = "us-east-1"
}


resource "aws_vpc" "teamable_vpc" {
    cidr_block = 
}

resource "aws_instance" "teamable_app_server" {
    ami = 
    instance_type = 
   tags = {
    Name = "teamable_app_server"
   } 
}
