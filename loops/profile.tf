
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
	bucket = "mytfmainbucketgloble5525" 
	key = "terraform.tfstate"
	region = "ap-south-1"
  profile = "configs"
  shared_credentials_files = ["~/.aws/credentials"]
}
}