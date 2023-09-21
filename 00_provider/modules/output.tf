output "main_id" {
    value = aws_s3_bucket.tfbucket.id
}

output "tfbucket" {
    value = aws_s3_bucket.tfbucket.name
}