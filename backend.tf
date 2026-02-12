terraform {
  backend "s3" {
<<<<<<< HEAD
    bucket         = "saikarthik-tf-state-2026"
=======
    bucket         = "your-new-unique-bucket"
>>>>>>> cb1ed8a (refactor: remove local terraform artifacts and old jenkins install script)
    key            = "jenkins/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
