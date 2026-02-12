terraform {
  backend "s3" {
    bucket         = "saikarthik-tf-state-2026"
    key            = "jenkins/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
