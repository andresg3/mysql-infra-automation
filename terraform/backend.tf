terraform {
  backend "local" {
    path = "./terraform.tfstate"
  }
}

/*
backend "s3" {
  bucket         = "my-tf-state-bucket"
  key            = "mysql-infra/state.tfstate"
  region         = "us-east-1"
  dynamodb_table = "terraform-locks"
  encrypt        = true
}
*/