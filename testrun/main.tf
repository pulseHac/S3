module "s3" {
  source = "../module/s3"
  name   = var.s3-bucket-name

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
  tags = {
    Name        = var.tags_name
    Environment = var.tags_env
  }

  versioning {
    enabled = var.versioning # default = false
  }
}
