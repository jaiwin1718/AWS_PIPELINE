terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.region
}

resource "aws_instance" "test_ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "test-ec2"
  }
}
