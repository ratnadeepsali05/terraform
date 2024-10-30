resource "aws_s3_bucket" "my_bucket" {
  bucket = "mytfmainbucketgloble5525
  acl    = "private"

  tags = {
    Name        = "My bucket"
  }
}
 
resource "aws_s3_bucket_object" "object_s3" {
  bucket = "aws_s3_bucket.my_bucket.bucket"
  key    = "ratnadeepsali05/terraform/s3_bucket/object"
  source = "ratnadeepsali05/terraform/s3_bucket/object"
  acl    = "public-read"


}
