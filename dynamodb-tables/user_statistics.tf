#Table Name : Tasks
resource "aws_dynamodb_table" "user_statistics" {
  name           = "user_statistics"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "uid"

  attribute {
    name = "uid"
    type = "S"
  }
  ttl {
    attribute_name = "TimeToExist"
    enabled        = false
  }
  tags = {
    Name        = "user_statistics"
  }
}