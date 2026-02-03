resource "aws_s3_bucket" "bucket" {
  bucket = "aab-bucket-iac-03022026-staging"

  tags = {
    Name    = "Primeiro bucket"
    Iac     = "true"
  }
}