resource "aws_s3_bucket" "privateaccess" {
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
