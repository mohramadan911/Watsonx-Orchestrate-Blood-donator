## Adding blood_donor_data.json data to DynamoDB

```aws dynamodb batch-write-item --request-items file://blood_donor_data.json --region us-east-1```

## Validate and scan the table

```aws dynamodb scan --table-name BloodDonorTable```