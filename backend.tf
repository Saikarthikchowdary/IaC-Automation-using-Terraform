terraform {
  backend "s3" {
    bucket = "cloud-devops-pro"
    key    = "jenkins/terraform.tfstate"
    region = "us-east-1"
  }
}