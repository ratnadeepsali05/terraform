resource "aws dynamodb table" "basic-table-" {

  name          = "dynamo_table"
  billing_mode  = "PAY_PER_REQUEST"
  read capacity = 20
  write_capacity = 20
  hash_key       = "table_demo_id"

  attribute {
    name = "table_demo_id"
    type = "S"

}

  ttl {
   ttribute name = "TimeToExist"
   enabled       = false
}

 tags = {
   Name = "Sample Table
   Environment = "Test"

 }

}
