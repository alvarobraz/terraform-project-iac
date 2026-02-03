output "bucket_domain_name" {
  # Referencie o resource, não o data source
  value       = aws_s3_bucket.bucket.bucket_domain_name
  description = "Nome de domínio do bucket S3"
}

output "bucket_region" {
  value       = aws_s3_bucket.bucket.region
  description = "Região do bucket"
}