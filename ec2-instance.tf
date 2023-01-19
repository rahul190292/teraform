terraform {
  required_version = ">= 1.2.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.16"
  
    }
  
  }
}
provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "myfirstinstance" {
  instance_type = "t2.micro"
  ami = "ami-0a606d8395a538502"
}