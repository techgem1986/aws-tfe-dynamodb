#Table Name : Tasks
resource "aws_dynamodb_table" "blog" {
  name           = "blog"
  billing_mode   = "PROVISIONED"
  read_capacity  = 5
  write_capacity = 5
  hash_key       = "id"
  range_key      = "date"

  attribute {
    name = "id"
    type = "S"
  }
  attribute {
    name = "date"
    type = "S"
  }
  ttl {
    attribute_name = "TimeToExist"
    enabled        = false
  }
  tags = {
    Name        = "blog"
  }
}