variable "gcp_region" {
  type        = string
  description = "GCP region"
}

variable "gcp_project" {
  type        = string
  description = "GCP project name"
}

variable "gcp_auth_file" {
  type        = string
  description = "GCP authentication file"
}

variable "gcp_vpc_network" {
  type        = string
  description = "Name of the VPC"
}

variable "gcp_vpc_subnet" {
  type        = string
  description = "Name of the Subnet"
}

variable "service_account" {
  type = string
  description = "The service account for terraform"
}