resource "aws_s3_bucket" "publicaccess" {
  bucket = "examplebuckettftest"
  acl    = "private"
  
  versioning {
    enabled = true
  }
  logging {
    target_bucket = aws_s3_bucket.log_bucket.id
    target_prefix = "log/"
    }
}