terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.67.0"
    }
  }
  backend "s3" {
    bucket = "mahe-2938"
    key = "myterra/terraform.tfstate"
    region = "us-east-1"


    
  }
}

provider "aws" {
  # Configuration options
  region = var.aws_region
}