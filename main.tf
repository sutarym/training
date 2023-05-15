


provider "aws" {
  region = "ap-south-1"
     access_key = "AKIAXQM6UOUEPNWGC7MB"
secret_key = "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"

}





resource "aws_instance" "myFirstInstance" {
  ami           = "ami-06c2ec1ceac22e8d6"
  key_name = "yasin-sutar"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0ebba453411cf5f33"
  
}
