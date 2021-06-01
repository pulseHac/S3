### variables for S3 bucket resource ###
variable "s3_bucket_name" {}
variable "s3_acl" {}
variable "s3_policy" {}
variable "tags_name" {}
variable "tags_env" {}

variable "versioning" {
  default = false
}

### variables for XYZ ###
