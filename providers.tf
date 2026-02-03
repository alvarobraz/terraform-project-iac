terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.28.0"
    }
  }
}

provider "aws" {
  region  = "us-east-2"
  profile = "AdministratorAccess-530482047728"
}