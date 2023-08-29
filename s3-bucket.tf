module "s3-bucket" {
  source  = "app.terraform.io/bhaskarpathak-training/s3-bucket/aws"
  version = "2.8.0"
}

resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket"
  bucket_prefix = "bhaskar"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
