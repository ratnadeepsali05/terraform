resource "aws_s3_bucket" "bucket" {
  bucket = "my-tf-main-bucket_globle"

  tags = {
    Name        = "My bucket"
  }
}
 
resource "aws_s3_bucket_object" "object" {
  bucket = "aws_s3_bucket.bucket.id"
  key    = ""
  source = "path/to/file"


}
