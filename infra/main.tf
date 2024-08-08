terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  backend "s3" {
    bucket = "testvote-seed"
    region = "eu-central-1"
    key    = "tfstate"
  }

  
}

provider "aws" {
  region  = "eu-central-1"
}