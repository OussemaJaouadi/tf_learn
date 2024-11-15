# main.tf
resource "aws_iam_user" "my_user" {
  name = var.iam_username
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket_name
}

resource "aws_iam_group" "dev_group" {
  name = var.iam_group_name
}

resource "aws_iam_user_group_membership" "user_in_dev_group" {
  user   = aws_iam_user.my_user.name
  groups = [aws_iam_group.dev_group.name]
}

data "template_file" "s3_policy" {
  template = file("policies/s3_dev.json")
  vars = {
    bucket_name = var.bucket_name
    group = aws_iam_group.dev_group.arn
  }
}

resource "aws_iam_group_policy" "dev_s3_policy" {
  name   = "dev-s3-policy"
  group  = aws_iam_group.dev_group.name
  policy = data.template_file.s3_policy.rendered
}

resource "aws_s3_object" "demo_upload" {
  bucket = aws_s3_bucket.my_bucket.bucket
  key = "demo.txt"
  source = "./docs/demo.txt"
}
