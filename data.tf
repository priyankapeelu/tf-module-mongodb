data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "terraform-d63"
    key    = "vpc/${var.ENV}/terraform.tfstate"
    region = "us-east-1"
  }
}