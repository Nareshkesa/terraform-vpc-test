terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
  backend "s3" {
    bucket = "daws78k-remote-state"
    key    = "expense-vpc"
    region = "us-east-1"
    dynamodb_table = "daws78k-locking"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}