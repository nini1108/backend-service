resource "aws_s3_bucket" "mybucket" {
	bucket = "terraform-serverless-jrdevops-sonia"
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.mybucket.id
  acl    = "private"
}

resource "aws_s3_bucket_object" "example"{
	bucket = aws_s3_bucket.mybucket.id
	key = "v1.0.0/example.zip"
	source = "/Users/soniani/DevOpsJR/DevOpsNotes/WK6_Terraform/hands_on/staging/example.zip"
} 
