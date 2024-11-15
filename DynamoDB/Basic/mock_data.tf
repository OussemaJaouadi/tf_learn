# data.tf
## Authors
resource "aws_dynamodb_table_item" "author1" {
  table_name = aws_dynamodb_table.Author.name
  hash_key   = aws_dynamodb_table.Author.hash_key

  item = jsonencode({
    "author_id": {"S": "auth_001"},
    "name": {"S": "J.R.R. Tolkien"},
    "nationality": {"S": "British"}
  })
}

resource "aws_dynamodb_table_item" "author2" {
  table_name = aws_dynamodb_table.Author.name
  hash_key   = aws_dynamodb_table.Author.hash_key

  item = jsonencode({
    "author_id": {"S": "auth_002"},
    "name": {"S": "George R.R. Martin"},
    "nationality": {"S": "American"}
  })
}

## Books for Author 1 (Tolkien)
resource "aws_dynamodb_table_item" "book1" {
  table_name = aws_dynamodb_table.Book.name
  hash_key   = aws_dynamodb_table.Book.hash_key

  item = jsonencode({
    "book_id": {"S": "book_001"},
    "title": {"S": "The Lord of the Rings"},
    "author_id": {"S": "auth_001"},
    "description": {"S": "An epic high-fantasy novel"},
    "createdAt": {"S": "2024-01-01"}
  })
}

resource "aws_dynamodb_table_item" "book2" {
  table_name = aws_dynamodb_table.Book.name
  hash_key   = aws_dynamodb_table.Book.hash_key

  item = jsonencode({
    "book_id": {"S": "book_002"},
    "title": {"S": "The Hobbit"},
    "author_id": {"S": "auth_001"},
    "description": {"S": "A fantasy novel and children's book"},
    "createdAt": {"S": "2024-01-02"}
  })
}

## Books for Author 2 (Martin)
resource "aws_dynamodb_table_item" "book3" {
  table_name = aws_dynamodb_table.Book.name
  hash_key   = aws_dynamodb_table.Book.hash_key

  item = jsonencode({
    "book_id": {"S": "book_003"},
    "title": {"S": "A Game of Thrones"},
    "author_id": {"S": "auth_002"},
    "description": {"S": "The first novel in A Song of Ice and Fire series"},
    "createdAt": {"S": "2024-01-03"}
  })
}

resource "aws_dynamodb_table_item" "book4" {
  table_name = aws_dynamodb_table.Book.name
  hash_key   = aws_dynamodb_table.Book.hash_key

  item = jsonencode({
    "book_id": {"S": "book_004"},
    "title": {"S": "A Clash of Kings"},
    "author_id": {"S": "auth_002"},
    "description": {"S": "The second novel in A Song of Ice and Fire series"},
    "createdAt": {"S": "2024-01-04"}
  })
}