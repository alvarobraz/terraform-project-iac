terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.28.0"
    }
  }

  backend "s3" {
    bucket  = "aab-iac-state-bucket-tf"
    region  = "us-east-2"
    profile = "AdministratorAccess-530482047728"
    key     = "terraform.tfstate"
    encrypt = true
  }
}



provider "aws" {
  region  = "us-east-2"
  profile = "AdministratorAccess-530482047728"
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = var.state_bucket

  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_s3_bucket_versioning" "terraform_state" {
  bucket = aws_s3_bucket.terraform_state.bucket

  versioning_configuration {
    status = "Enabled"
  }

  depends_on = [aws_s3_bucket.terraform_state]

}