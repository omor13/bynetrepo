terraform {
  cloud {
    organization = "Bynet1"

    workspaces {
      name = "WorkCLI"
    }
  }
   required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}


provider "aws" {
    region = "eu-central-1"
}

# New testing VPC
resource "aws_vpc" "test_vpc" {
    cidr_block = "192.168.1.0/24"
}