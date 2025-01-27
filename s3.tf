resource "aws_s3_bucket" "static_content_bucket" {
  bucket = "new-bucket-nsh-state-test"
  acl    = "private"

  versioning {
    enabled = true
  }

  tags = {
    Name        = "s3bucket"
    Environment = var.environment
  }
}
