resource "aws_s3_bucket" "static_site" {
  bucket = var.s3_bucket_name
  acl    = var.s3_acl
  policy = file(var.s3_policy)

  website {
    index_document = "index.html"
    error_document = "error.html"

    routing_rules = <<EOF
[{
    "Condition": {
        "KeyPrefixEquals": "docs/"
    },
    "Redirect": {
        "ReplaceKeyPrefixWith": "documents/"
    }
}]
EOF
  }
}
