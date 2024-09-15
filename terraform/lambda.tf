resource "aws_lambda_function" "get_blood_donors" {
  function_name = "getBloodDonors"
  role          = aws_iam_role.lambda_dynamodb_role.arn
  handler       = "getBloodDonors.lambda_handler"  # Path to your function
  runtime       = "python3.8"

  filename = "${path.module}/../getBloodDonors/getBloodDonors.zip"

  source_code_hash = filebase64sha256("${path.module}/../getBloodDonors/getBloodDonors.zip")

  environment {
    variables = {
      TABLE_NAME = aws_dynamodb_table.BloodDonorTable.name
    }
  }
}
