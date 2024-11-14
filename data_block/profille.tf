
provider "aws" {
   region = "ap-south-1"
   profile = "configs"
    default_tags {
                tags = {
                    name = "aws"
                }
    }
}

terraform {

required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.66.1"
    }
  }

backend "s3" {
	bucket = "terraform-state-bucket-s3-state-store" 
	key = "terraform.tfstate"
	region = "ap-south-1"