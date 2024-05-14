terraform {
  backend "s3" {
    region = "us-east-1"
    key    = "account_id/<state-key>.tfstate"
    bucket = "bucket_name"
  }
}