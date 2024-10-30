resource "aws_s3_bucket" "bucket" {
  bucket = "mytfmainbucketgloble5525"

  tags = {
    Name        = "My bucket"
  }
}
 
resource "aws_s3_bucket_object" "object_s3" {
  bucket = "aws_s3_bucket.bucket.id"
  key    = "index.html"
  source = "ratnadeepsali05/terraform/s3_bucket/object/index.html"


}
