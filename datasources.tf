data "aws_s3_bucket" "bucket" {
    bucket = "aab-bucket-iac-03022026-${terraform.workspace}"
}