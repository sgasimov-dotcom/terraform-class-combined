resource "aws_s3_bucket" "bucket2" {
  bucket_prefix = "s3-class-with-evolve-cyber-"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}