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

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
  default     = "10.0.1.0/24"
}
variable "ami_id" {
  description = "AMI ID for EC2 instance"
  type        = string
  default     = "ami-0163c744d3be9a259"
}

variable "instance_type" {
  description = "Instance type for EC2"
  type        = string
  default     = "t2.micro"
}

variable "key_pair_name" {
  description = "Name of the key pair for SSH access"
  type        = string
  default     = "testkey"
}

variable "key_pair_location" {
  description = "Path where the private key will be saved"
  type        = string
  default     = "./docs/testkey.pem"
}

variable "nginx_ssh_ingress_cidr" {
  description = "CIDR block allowed to SSH into EC2 instance"
  type        = string
  default     = "0.0.0.0/0"
}