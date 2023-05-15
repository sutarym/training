


provider "aws" {
  region = "ap-south-1"
  access_key = "AKIAXQM6UOUEN4AYOC5O"
secret_key = "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"

}

backend "s3" {
  bucket = "yasin-sutar-bucket"
  region = "ap-south-1"
}





resource "aws_instance" "myFirstInstance" {
  ami           = "ami-06c2ec1ceac22e8d6"
  key_name = "yasin-sutar"
  instance_type = "t2.micro"
  
}
