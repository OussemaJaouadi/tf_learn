# variables.tf
variable "aws_access_key" {
  description = "AWS Access Key"
  type        = string
}

variable "aws_secret_key" {
  description = "AWS Secret Key"
  type        = string
}

variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "eu-south-1"
}

variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
  default     = "my-terraform-bucket"
}

variable "iam_username" {
  description = "Name of the IAM user"
  type        = string
  default     = "my-terraform-user"
}
variable "iam_group_name" {
  description = "Name of the IAM group"
  type        = string
  default     = "dev"
}