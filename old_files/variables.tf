variable "gcp_region" {
  type        = string
  description = "GCP region"
}
variable "gcp_zone" {
  type        = string
  description = "GCP zone"
}
variable "gcp_project" {
  type        = string
  description = "GCP project name"
}

variable "gcp_vpc_network" {
  type        = string
  description = "Name of the VPC"
}

variable "gcp_vpc_subnet" {
  type        = string
  description = "Name of the Subnet"
}

variable "gcp_vpc_subnet_range" {
  type        = string
  description = "IPs for the subnet to use."
}

variable "iap_range" {
  type = string
  default = "35.235.240.0/20"
  description = "IP range for IAP access."
}
variable "service_account" {
  type = string
  description = "The service account for terraform"
}

variable "num_instances" {
  description = "Number of instances to create"
}

variable "vm_service_account" {
  default = null
  type = object({
    email  = string
    scopes = set(string)
  })
  description = "Service account to attach to the instance. See https://www.terraform.io/docs/providers/google/r/compute_instance_template.html#service_account."
}

variable "labels" {
  type = map
  description = "Used to create any labels for resources created."
}