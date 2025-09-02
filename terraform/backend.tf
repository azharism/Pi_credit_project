terraform {
  required_version = ">= 1.0"
  backend "s3" {
    bucket         = var.state_bucket
    key            = "terraform/state.tfstate"
    region         = var.region
    dynamodb_table = var.lock_table
  }
}