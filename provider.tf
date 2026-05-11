terraform {
  required_version = ">1.4"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.0.0"
    }
  }

  # Define Terraform Backend for S3
  backend "s3" {
    bucket       = "rs-terraform-statefile011"   # ← Fixed typo
    key          = "terraform-statefile"
    region       = "ap-southeast-1"
    use_lockfile = true                          # ← Replaces dynamodb_table
  }
}

provider "aws" {
  region = "ap-southeast-1"
}
