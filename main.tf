


provider "aws" {
  region = "ap-south-1"
  access_key = "AKIAXQM6UOUEIV6HREG5"
secret_key = "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"

}





resource "aws_instance" "myFirstInstance" {
  ami           = "ami-06c2ec1ceac22e8d6"
  key_name = "yasin-sutar"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0ebba453411cf5f33"
  
}
