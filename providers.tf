terraform {
  required_version = ">= 1.5.7"
backend "s3" {
  bucket       = "devops-terraform-state-182011941346"
  key          = "aws-eks-github-actions/terraform.tfstate"
  region       = "ap-south-1"
  encrypt      = true
  use_lockfile = true
}
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}
