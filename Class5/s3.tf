resource "aws_kms_key" "mykey" {
  description             = "This key is used to encrypt bucket objects"
  deletion_window_in_days = 10
}



resource "aws_s3_bucket" "bucket2" {
  bucket_prefix = "s3-class-with-evolve-cyber-"
  acl    = "private"

  versioning {
    enabled = true
  }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = aws_kms_key.mykey.arn
        sse_algorithm     = "aws:kms"
      }
    }
  }


  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

