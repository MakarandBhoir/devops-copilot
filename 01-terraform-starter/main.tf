// setup provider for terraform
provider "aws" {
  region = "us-east-1"
}

// setup require provider for terraform with latest version
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.80.0"
    }
  }
}

// create new vpc with cidr block and name dev-vpc
resource "aws_vpc" "dev-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "dev-vpc"
  }
}
