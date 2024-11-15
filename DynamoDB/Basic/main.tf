# Books Table
resource "aws_dynamodb_table" "Book" {
  name           = "Book"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "book_id"

  # Only define attributes that are used as keys in table or GSIs
  attribute {
    name = "book_id"
    type = "S"
  }

  attribute {
    name = "author_id"
    type = "S"
  }

  attribute {
    name = "title"
    type = "S"
  }

  # GSI for querying by title
  global_secondary_index {
    name               = "TitleIndex"
    hash_key           = "title"
    projection_type    = "ALL"  # Changed to ALL since we're including most attributes anyway
  }

  # GSI for querying by author
  global_secondary_index {
    name               = "AuthorIndex"
    hash_key           = "author_id"
    projection_type    = "ALL"
  }

  # Remove BookIndex - redundant with primary key
  
  tags = {
    Environment = "production"
  }
}

# Author Table
resource "aws_dynamodb_table" "Author" {
  name           = "Author"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "author_id"

  attribute {
    name = "author_id"
    type = "S"
  }

  attribute {
    name = "name"
    type = "S"
  }

  attribute {
    name = "nationality"
    type = "S"
  }

  # GSI for querying by author name
  global_secondary_index {
    name               = "NameIndex"
    hash_key           = "name"
    projection_type    = "ALL"
  }

  # GSI for querying by nationality
  global_secondary_index {
    name               = "NationalityIndex"
    hash_key           = "nationality"
    projection_type    = "ALL"
  }

  tags = {
    Environment = "production"
  }
}