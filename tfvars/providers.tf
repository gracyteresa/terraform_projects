terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
  backend "s3" {
    bucket         = "tfstatebucket4062"
    key            = "env/dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "my-lock-table2"
    encrypt        = true
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

