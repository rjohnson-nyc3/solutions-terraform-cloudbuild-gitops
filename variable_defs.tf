variable "syslog_project_id" {
  type    = string
  default = "nyc3-prod-styx"
}

variable "avi_project_id" {
  type    = string
  default = "nyc3-prod-hostnetwork"
}

variable "primary_region" {
  type    = string
  default = "us-east1"
}

variable "primary_zones" {
  type    = list(any)
  default = ["us-east1-d", "us-east1-c", "us-east1-b"]
}

variable "secondary_region" {
  type    = string
  default = "us-east4"
}

variable "secondary_zones" {
  type    = list(any)
  default = ["us-east4-c", "us-east4-b", "us-east4-a"]
}

variable "source_machine_image" {
  type    = string
  default = "projects/nyc3-prod-styx/global/machineImages/slng-machine-image"
}

variable "source_machine_image_7027_16" {
  type    = string
  default = "projects/nyc3-prod-styx/zones/us-east1-d/disks/slng-machine-image-rhel8-7027-16"
}



variable "lb_disk_image" {
  type    = string
  default = "projects/nyc3-prod-hyperloop/global/images/avi-controller-21-1-2"
}


//////////////
// east 1 
//////////////
variable "syslog_vpc_network_e1" {
  type    = string
  default = "nyc3-prod-slng-vpc-e1"
}
variable "syslog_vpc_subnet_e1" {
  type    = string
  default = "slng-10-2-32-128-25"
}
variable "syslog_vpc_subnet_range_e1" {
  type    = string
  default = "10.2.32.128/25"
}
variable "syslog_vpc_subnet_self_link_e1" {
  type    = string
  default = "projects/nyc3-prod-styx/regions/us-east1/subnetworks/slng-10-2-32-128-25"
}
variable "avi_vpc_subnet_e1" {
  type    = string
  default = "avi-10-2-26-128-25-e1"
}
variable "avi_vpc_subnet_range_e1" {
  type    = string
  default = "10.2.26.128/25"
}
variable "avi_vpc_subnet_self_link_e1" {
  type    = string
  default = "projects/nyc3-prod-hostnetwork/regions/us-east1/subnetworks/avi-10-2-26-128-25-e1"
}


//////////////
// east 4
//////////////
variable "syslog_vpc_network_e4" {
  type    = string
  default = "nyc3-prod-slng-vpc-e4"
}
variable "syslog_vpc_subnet_e4" {
  type    = string
  default = "slng-10-2-33-128-25"
}
variable "syslog_vpc_subnet_range_e4" {
  type    = string
  default = "10.2.33.128/25"
}
variable "syslog_vpc_subnet_self_link_e4" {
  type    = string
  default = "projects/nyc3-prod-styx/regions/us-east4/subnetworks/slng-10-2-33-128-25"
}
variable "avi_vpc_subnet_e4" {
  type    = string
  default = "avi-10-2-27-128-25-e4"
}
variable "avi_vpc_subnet_range_e4" {
  type    = string
  default = "10.2.27.128/25"
}
variable "avi_vpc_subnet_self_link_e4" {
  type    = string
  default = "projects/nyc3-prod-hostnetwork/regions/us-east4/subnetworks/avi-10-2-27-128-25-e4"
}

# variable "service_account" {
#   type    = string
#   default = "terraform@nyc3-prod-hyperloop.iam.gserviceaccount.com"
# }

variable "lb_service_account" {
  type    = string
  default = "avi-prod-service-account@nyc3-prod-hostnetwork.iam.gserviceaccount.com"
}

variable "labels" {
  type = map(any)
  default = {
    env     = "prod"
    creator = "terraform"
  }
}

# variable "vm_service_account" {
#   default = null
#   type = object({
#     email  = string
#     scopes = set(string)
#   })
#   description = "Service account to attach to the instance. See https://www.terraform.io/docs/providers/google/r/compute_instance_template.html#service_account."
# }