terraform {
  backend "s3" {
    bucket = "delete-bucket-yasint"
    key    = "terraform.tfstate"
    region = "ap-south-1"
      access_key = "AKIAXQM6UOUEIV6HREG5"
secret_key = "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"
  }
}
