
provider "aws" {
   region = "ap-south-1"
   profile = "configs"
    default_tags {
                tags = {
                    name = "aws"
                }
}
backend "s3" {
	bucket = "mytfmainbucketgloble5525" 
	key = "terraform.tfstate"
	region = "ap-south-1"
	
}
}
