terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.93.0"
    }
  }

  backend "s3" {
    bucket = "81s-dev"
    key    = "vpc_test"
    region = "us-east-1"
    dynamodb_table = "dynamodb"
  }
}

provider "aws" {
    region ="us-east-1"
}