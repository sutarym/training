


provider "aws" {
  region = "ap-south-1"
  access_key = "AKIAXQM6UOUENOJC24Z7"
secret_key = "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"

}





resource "aws_instance" "myFirstInstance" {
  ami           = "ami-06c2ec1ceac22e8d6"
  key_name = "yasin-sutar"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0ebba453411cf5f33"
  
}
