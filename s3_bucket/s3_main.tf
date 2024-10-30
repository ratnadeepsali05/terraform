resource "aws_s3_bucket" "bucket" {
  bucket = "my-tf-main-bucket_globle"

  tags = {
    Name        = "My bucket"
  }
}
