terraform {
  backend "s3" {
    bucket = "mystatebucketterraform1234"
    key    = "state"
    region = "ca-central-1"
    dynamodb_table = "backend"
  }

}