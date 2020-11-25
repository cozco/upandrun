terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket = "terraform-up-and-running-cosmos"
    key    = "stage/data-stores/mysql/terraform.tfstate"
    region = "us-west-2"

    # DynamoDB table
    dynamodb_table = "terraform-up-and-running-locks"
    encrypt        = true
  }
}