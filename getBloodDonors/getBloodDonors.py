import boto3
from boto3.dynamodb.conditions import Attr
import json

dynamodb = boto3.resource('dynamodb')
table = dynamodb.Table('BloodDonorTable')

def lambda_handler(event, context):
    blood_type = event['queryStringParameters'].get('blood_type')
    location = event['queryStringParameters'].get('location')
    
    response = table.scan(
        FilterExpression=Attr('BloodType').eq(blood_type) & Attr('Location').eq(location)
    )
    
    return {
        'statusCode': 200,
        'body': json.dumps(response['Items']),
        'headers': {
            'Content-Type': 'application/json'
        }
    }
