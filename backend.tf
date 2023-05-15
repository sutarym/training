terraform {
  backend "s3" {
    bucket = "delete-bucket-yasint"
    key    = "terraform.tfstate"
    region = "ap-south-1"
    
  }
}
