provider "aws" {
  region  = "ap-south-1" # Don't change the region
   access_key = "AKIAXQM6UOUEN4AYOC5O"
  secret_key = "TxOBwWWdcW7dvRVzZ3AimIKIuFABMRZxR5IEt445"
}

# Add your S3 backend configuration here

terraform{
  backend "s3" {
    bucket = "yasin-sutar-bucket"
    key    = "Yasin.Sutar"
    region = "ap-south-1"
   
  }
}
