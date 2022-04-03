terraform {
  # required_version = ">= 1.1.7"
  backend "s3" {
    bucket = "soban252s3bucket"
    key    = "terraformstate"
    region = "us-east-1"
  }
  required_providers {
    aws = {
      source = "hashicorp/aws"
      # version = "~> 4.3"
    }
  }

}
provider "aws" {
  region  = "us-east-1"
  #profile = "default"
}
