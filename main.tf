terraform {
  backend "s3" {
    bucket = "yasin-sutar-bucket"
    key    = "terraform.tfstate"
    region = "ap-south-1"
    access_key = "AKIAXQM6UOUEN4AYOC5O"
  secret_key = "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"
  }
}


provider "aws" {
  region     = "ap-south-1"
  
}
