# backend.tf
terraform {
  required_providers {
     aws = {
       source = "hashicorp/aws"
     }
   }
}
terraform {
  backend "s3" {}
}

resource "aws_s3_bucket" "state_bucket" {
  bucket = "bucket-state"

}
resource "aws_dynamodb_table" "terraform_locks" {
  name           = "terraform-locks"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}