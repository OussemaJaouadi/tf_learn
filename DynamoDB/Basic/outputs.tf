# outputs.tf
output "book_table_name" {
  value = aws_dynamodb_table.Book.name
}

output "author_table_name" {
  value = aws_dynamodb_table.Author.name
}
# Output for each author with their main details
output "author1_details" {
  value = aws_dynamodb_table_item.author1.item
  description = "Details of Author 1 (J.R.R. Tolkien)"
}

output "author2_details" {
  value = aws_dynamodb_table_item.author2.item
  description = "Details of Author 2 (George R.R. Martin)"
}

# Output for each book with their main details
output "book1_details" {
  value = aws_dynamodb_table_item.book1.item
  description = "Details of Book 1 (The Lord of the Rings)"
}

output "book2_details" {
  value = aws_dynamodb_table_item.book2.item
  description = "Details of Book 2 (The Hobbit)"
}

output "book3_details" {
  value = aws_dynamodb_table_item.book3.item
  description = "Details of Book 3 (A Game of Thrones)"
}

output "book4_details" {
  value = aws_dynamodb_table_item.book4.item
  description = "Details of Book 4 (A Clash of Kings)"
}
