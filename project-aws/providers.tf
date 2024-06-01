terraform {  
  required_version = "~> 1.7"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0" //  current latest version 5.49.0
    }
  }
}

provider "aws" {
  region = var.aws_region
  profile = "default"
}