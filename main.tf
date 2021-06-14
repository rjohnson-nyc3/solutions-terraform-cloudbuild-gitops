terraform {
  # required_version = ">= 0.14"
    backend "gcs" {
    bucket = "nyc3-dev-sbx-bucket-tfstate"
    prefix = "terraform/org/state"
  }
}

provider "google" {
  project = var.project_id
  region = var.primary_region
  zone = var.primary_zones.0
}

provider "google-beta" {
  project = var.project_id
  region = var.primary_region
  zone = var.primary_zones.0
}