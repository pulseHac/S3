output "s3-bucket-id" {
  value = aws_s3_bucket.static_site.id
}

output "s3-bucket-arn" {
  value = aws_s3_bucket.static_site.arn
}

output "s3-website-endpoint" {
  value = aws_s3_bucket.static_site.website_endpoint
}
