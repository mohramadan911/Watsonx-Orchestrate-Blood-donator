
resource "aws_dynamodb_table" "BloodDonorTable" {
  name           = "BloodDonorTable"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "DonorID"

  attribute {
    name = "DonorID"
    type = "S"
  }

  # Global Secondary Index (if we need to query by other fields like BloodType)
  global_secondary_index {
    name            = "BloodTypeIndex"
    hash_key        = "BloodType"
    projection_type = "ALL"
  }

  global_secondary_index {
    name            = "LocationIndex"
    hash_key        = "Location"
    projection_type = "ALL"
  }

  attribute {
    name = "BloodType"
    type = "S"
  }

  attribute {
    name = "Location"
    type = "S"
  }

  tags = {
    Name = "BloodDonorTable"
    Environment = "Production"
  }
}
