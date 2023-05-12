provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAXQM6UOUEN4AYOC5O"
  secret_key = "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"
}

resource "aws_instance" "web" {
  ami           = "ami-06c2ec1ceac22e8d6"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
