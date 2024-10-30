resource "aws_s3_bucket" "bucket" {
  bucket = "mytfmainbucketgloble5525"

  tags = {
    Name        = "My bucket"
  }
}
 
resource "aws_s3_bucket_object" "object_s3" {
  bucket = "ratnadeepsali05"
  key    = "ratnadeepsali05/terraform/s3_bucket/object"
  source = "ratnadeepsali05/terraform/s3_bucket/object"
  acl    = "public-read"


}
