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
    cidr_block = "10.0.0.0/16"
}

resource "aws_instance" "teamable_app_server" {
    ami = "ami-00874d747dde814fa"
    instance_type = "t2.micro"
   tags = {
    Name = "teamable_app_server"
   } 
}
