resource "aws_s3_bucket" "unrestricted" {
  bucket = "examplebuckettftest"
  acl    = "public-read-write"
  
  versioning {
    enabled = false
  }
  
  logging {
    target_bucket = aws_s3_bucket.log_bucket.id
    target_prefix = "log/"
    }
}
