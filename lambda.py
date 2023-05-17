import requests
import os
import json
import boto3

def lambda_handler():

  request_body_ = {
    'subnet_id': "subnet",
    'name': "Yasin",
    'email': "sutaryasin243@gmail.com"
  }
    # Convert the payload to JSON
  request_body = json.dumps(request_body_)
 
  request_headers = {
        "Content-Type": "application/json"
    }

  response = requests.post('https://httpbin.org/post',
                             headers=request_headers,
                             data=json.dumps(request_body))
  # Check the response status code
  if response.status_code == 200:
    return {
      'statusCode': 200,
      'body': json.dumps({'message': 'The request was successful.'})
    }
  else:
    return {
      'statusCode': response.status_code,
      'body': json.dumps({'message': 'The request failed.'})
    }

print(lambda_handler())
