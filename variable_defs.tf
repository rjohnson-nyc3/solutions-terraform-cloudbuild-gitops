variable "syslog_project_id" {
  type = string
  default = "nyc3-dev-eds-avalon"
}

variable "network_project_id" {
  type = string
  default = "nyc3-dev-hostnetwork"
}

variable "primary_region" {
  type = string
  default = "us-east1"
}

variable "primary_zones" {
  type = list
  default = ["us-east1-d","us-east1-c","us-east1-b"]
}

variable "secondary_region" {
  type = string
  default = "us-east4"
}

variable "secondary_zones" {
  type = list
  default = ["us-east4-c","us-east4-b","us-east4-a"]
}

variable "source_machine_image" {
  type = string
  # default = "projects/nyc3-dev-sbx-syslog/global/machineImages/slng-sbx-machine-image"
  default = "projects/nyc3-dev-eds-avalon/global/machineImages/slng-vpc-east4-1"
} 

variable "lb_disk_image" {
  type = string
  default = "projects/nyc3-dev-sbx-syslog/global/machineImages/slng-sbx-machine-image"
} 

variable "vpc_network" {
  type = string
  default = "nyc3-dev-sbx-vpc"
}

variable "vpc_subnet" {
  type = string
  default = "nyc3-dev-sbx-subnet"
} 

variable "vpc_subnet_range" {
  type = string
  default = "10.10.30.0/24"
}

variable "service_account" {
  type = string
  default = "terraform@nyc3-dev-sbx-syslog.iam.gserviceaccount.com"
}

variable "lb_service_account" {
  type = string
  default = "avi-dev-service-account@nyc3-dev-hostnetwork.iam.gserviceaccount.com"
}

variable "num_instances" {
  type = number
  default = 3
}

variable "labels" {
  type = map
  default = {
      env = "dev-sbx"
      creator = "terraform"
  }
}

variable "vm_service_account" {
  default = null
  type = object({
    email  = string
    scopes = set(string)
  })
  description = "Service account to attach to the instance. See https://www.terraform.io/docs/providers/google/r/compute_instance_template.html#service_account."
}