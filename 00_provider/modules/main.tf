resource "aws_s3_bucket" "tfbucket" {
  bucket = "greenbluebucket${var.project_name}"  
  tags = {
    Name        = "bucket-${var.project_name}"
  }  
}

resource "aws_s3_bucket_acl" "bucketaceeslist" {
  bucket = aws_s3_bucket.tfbucket.id
  acl    = "private"
}