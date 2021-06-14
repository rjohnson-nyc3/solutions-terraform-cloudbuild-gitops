terraform {
  required_version = ">= 0.14"
  backend "gcs" {
    bucket = "nyc3-dev-sbx-bucket-tfstate"
    prefix = "terraform/org/state"
  }
}
