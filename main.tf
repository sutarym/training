



resource "aws_instance" "myFirstInstance" {
  ami           = "ami-06c2ec1ceac22e8d6"
#  key_name = var.key_name
  instance_type = "t2.micro"
  
}
