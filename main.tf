


provider "aws" {
  region = "ap-south-1"
  access_key = "AKIAXQM6UOUEN4AYOC5O"
secret_key = "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"

}





resource "aws_s3_bucket" "terraform_state_for_yasin_ankal" {
  bucket = "terraform-state"
  region = "ap-south-1"
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "Stmt1",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::516265637128:user/Sample"
      },
      "Action": "s3:*",
      "Resource": "arn:aws:s3:::terraform-state/*"
    }
  ]
}
EOF
}

resource "aws_s3_bucket_object" "terraform_state" {
  bucket = aws_s3_bucket.terraform_state_for_yasin_ankal.bucket
  key = "terraform.tfstate"
  source = "terraform.tfstate"
}
resource "aws_instance" "myFirstInstance" {
  ami           = "ami-06c2ec1ceac22e8d6"
  key_name = "yasin-sutar"
  instance_type = "t2.micro"
  
}
