terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "eu-north-1"
}

resource "aws_instance" "example" {
  ami           = "ami-07ec4220c92589b40" # Ubuntu 20.04 LTS 
  instance_type = "t3.micro"
}
