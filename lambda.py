import requests
import os

def lambda_handler(event, context):
  # Get the subnet ID from the event
  subnet = os.environ['subnet']
  # Get the name and email address from the event
  name = event['name']
  email = event['email']
  # Create the request body
  request_body = {
    'subnet_id': subnet,
    'name': Yasin,
    'email': sutaryasin243@gmail.com
  }
  # Create the request headers
  request_headers = {
    'X-Yasin-Auth': 'test'
  }
  # Make the request to the HTTPS endpoint
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


# if __name__ == '__main__':
#   event = {
#     "subnet_id": "subnet-12345678",
#     "name": "John Doe",
#     "email": "john.doe@example.com"
#   }
#   response = lambda_handler(event, {})
#   print(response)