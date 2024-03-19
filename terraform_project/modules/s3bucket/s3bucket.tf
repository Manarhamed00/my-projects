resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket"

  tags = var.s3_tags
}