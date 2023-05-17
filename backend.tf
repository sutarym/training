terraform {
  backend "s3" {
    bucket = "delete-bucket-yasin"
    key    = "terraform.tfstate"
    region = "ap-south-1"
      access_key = "AKIAXQM6UOUEF6V3C4RC"
  secret_key = "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"
  }
}
