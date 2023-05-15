


provider "aws" {
  region = "ap-south-1"
  access_key = "AKIAXQM6UOUEC6CB7O4I"
secret_key = "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"

}





resource "aws_instance" "myFirstInstance" {
  ami           = "ami-06c2ec1ceac22e8d6"
  key_name = "yasin-sutar"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0ebba453411cf5f33"
  
}
