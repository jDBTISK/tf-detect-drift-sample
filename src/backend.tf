terraform {
  backend "s3" {
    key     = "drift-github-sample/terraform.tfstate"
    encrypt = true
  }
}
