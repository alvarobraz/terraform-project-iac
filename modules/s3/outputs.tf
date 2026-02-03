output "bucket_domain_name" {
  value       = aws_s3_bucket.bucket.bucket_domain_name
  description = "Nome de domínio do bucket S3"
}

output "bucket_id" {
  value       = aws_s3_bucket.bucket.id
  description = "ID de domínio do bucket S3"
}