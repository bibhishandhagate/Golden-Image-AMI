terraform {
  required_version = ">1.4"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.0.0"
    }
  }

  # Define Terraform Backend for S3 and DynamoDB table
  backend "s3" {
    bucket         = "rs-terraform-statefile01565"
    key            = "terraform-statefile"
    region         = "ap-southeast-1"
    # role_arn removed — using access key/secret key instead
    dynamodb_table = "rs-terraform-statetable"
  }
}

provider "aws" {
  region = "ap-southeast-1"
  # assume_role block removed — using access key/secret key instead
}
