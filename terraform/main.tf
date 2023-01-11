terraform {
    required_providers {
      aws = ">= 4.16"
      null = ">=3.0"
    }
    
  required_version = ">= 0.12"
}

provider "aws" {
  region = var.region
  profile = var.profile
}

data "aws_availability_zones" "available" {
  status = "available"
}

resource "aws_instance" "instance" {
  region = var.region
  ami = var.ami
  
}