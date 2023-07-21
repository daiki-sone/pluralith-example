terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-830c94e3"
  instance_type = "t2.nano"

  tags = {
    Name = "TestInstance"
  }
}

resource "aws_s3_bucket" "example" {
    bucket = "test-bucket-123456789"
    acl    = "private"
}
