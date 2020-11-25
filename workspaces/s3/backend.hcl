# backend.hcl
bucket         = "terraform-up-and-running-cosmos"
region         = "us-west-2"
dynamodb_table = "terraform-up-and-running-locks"
encrypt        = true