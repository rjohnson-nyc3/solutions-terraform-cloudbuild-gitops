# Network Configurations

//////////////
// east 1 Static IP reservations for AVI
//////////////
resource "google_compute_address" "nyc3_prod_avi_ctrl_1_e1" {
  name         = "nyc3-prod-avi-ctrl-1-e1"
  project      = var.avi_project_id
  subnetwork   = var.avi_vpc_subnet_e1
  address_type = "INTERNAL"
  address      = "10.2.26.131"
  region       = var.primary_region
}
resource "google_compute_address" "nyc3_prod_avi_ctrl_2_e1" {
  name         = "nyc3-prod-avi-ctrl-2-e1"
  project      = var.avi_project_id
  subnetwork   = var.avi_vpc_subnet_e1
  address_type = "INTERNAL"
  address      = "10.2.26.132"
  region       = var.primary_region
}
resource "google_compute_address" "nyc3_prod_avi_ctrl_3_e1" {
  name         = "nyc3-prod-avi-ctrl-3-e1"
  project      = var.avi_project_id
  subnetwork   = var.avi_vpc_subnet_e1
  address_type = "INTERNAL"
  address      = "10.2.26.133"
  region       = var.primary_region
}

//////////////
// east 1 Static IP reservations for Syslog
//////////////

resource "google_compute_address" "nyc3_prod_slng_1_e1" {
  name         = "nyc3-prod-slng-1-e1"
  project      = var.syslog_project_id
  subnetwork   = var.syslog_vpc_subnet_e1
  address_type = "INTERNAL"
  address      = "10.2.32.130"
  region       = var.primary_region
}
resource "google_compute_address" "nyc3_prod_slng_2_e1" {
  name         = "nyc3-prod-slng-2-e1"
  project      = var.syslog_project_id
  subnetwork   = var.syslog_vpc_subnet_e1
  address_type = "INTERNAL"
  address      = "10.2.32.131"
  region       = var.primary_region
}
resource "google_compute_address" "nyc3_prod_slng_3_e1" {
  name         = "nyc3-prod-slng-3-e1"
  project      = var.syslog_project_id
  subnetwork   = var.syslog_vpc_subnet_e1
  address_type = "INTERNAL"
  address      = "10.2.32.132"
  region       = var.primary_region
}
resource "google_compute_address" "nyc3_prod_slng_4_e1" {
  name         = "nyc3-prod-slng-4-e1"
  project      = var.syslog_project_id
  subnetwork   = var.syslog_vpc_subnet_e1
  address_type = "INTERNAL"
  address      = "10.2.32.133"
  region       = var.primary_region
}
resource "google_compute_address" "nyc3_prod_slng_5_e1" {
  name         = "nyc3-prod-slng-5-e1"
  project      = var.syslog_project_id
  subnetwork   = var.syslog_vpc_subnet_e1
  address_type = "INTERNAL"
  address      = "10.2.32.134"
  region       = var.primary_region
}
resource "google_compute_address" "nyc3_prod_slng_6_e1" {
  name         = "nyc3-prod-slng-6-e1"
  project      = var.syslog_project_id
  subnetwork   = var.syslog_vpc_subnet_e1
  address_type = "INTERNAL"
  address      = "10.2.32.135"
  region       = var.primary_region
}

resource "google_compute_address" "nyc3_prod_slng_7_e1" {
  name         = "nyc3-prod-slng-7-e1"
  project      = var.syslog_project_id
  subnetwork   = var.syslog_vpc_subnet_e1
  address_type = "INTERNAL"
  address      = "10.2.32.136"
  region       = var.primary_region
}
resource "google_compute_address" "nyc3_prod_slng_8_e1" {
  name         = "nyc3-prod-slng-8-e1"
  project      = var.syslog_project_id
  subnetwork   = var.syslog_vpc_subnet_e1
  address_type = "INTERNAL"
  address      = "10.2.32.137"
  region       = var.primary_region
}
resource "google_compute_address" "nyc3_prod_slng_9_e1" {
  name         = "nyc3-prod-slng-9-e1"
  project      = var.syslog_project_id
  subnetwork   = var.syslog_vpc_subnet_e1
  address_type = "INTERNAL"
  address      = "10.2.32.138"
  region       = var.primary_region
}

# resource "google_compute_address" "nyc3_prod_slng_10_e1" {
#   name         = "nyc3-prod-slng-10-e1"
#   project      = var.syslog_project_id
#   subnetwork   = var.syslog_vpc_subnet_e1
#   address_type = "INTERNAL"
#   address      = "10.2.32.139"
#   region       = var.primary_region
# }


//////////////
// east 4 Static IP reservations for AVI
//////////////
resource "google_compute_address" "nyc3_prod_avi_ctrl_1_e4" {
  name         = "nyc3-prod-avi-ctrl-1-e4"
  project      = var.avi_project_id
  subnetwork   = var.avi_vpc_subnet_e4
  address_type = "INTERNAL"
  address      = "10.2.27.131"
  region       = var.secondary_region
}
resource "google_compute_address" "nyc3_prod_avi_ctrl_2_e4" {
  name         = "nyc3-prod-avi-ctrl-2-e4"
  project      = var.avi_project_id
  subnetwork   = var.avi_vpc_subnet_e4
  address_type = "INTERNAL"
  address      = "10.2.27.132"
  region       = var.secondary_region
}
resource "google_compute_address" "nyc3_prod_avi_ctrl_3_e4" {
  name         = "nyc3-prod-avi-ctrl-3-e4"
  project      = var.avi_project_id
  subnetwork   = var.avi_vpc_subnet_e4
  address_type = "INTERNAL"
  address      = "10.2.27.133"
  region       = var.secondary_region
}

//////////////
// east 4 Static IP reservations for Syslog
//////////////

resource "google_compute_address" "nyc3_prod_slng_1_e4" {
  name         = "nyc3-prod-slng-1-e4"
  project      = var.syslog_project_id
  subnetwork   = var.syslog_vpc_subnet_e4
  address_type = "INTERNAL"
  address      = "10.2.33.130"
  region       = var.secondary_region
}
resource "google_compute_address" "nyc3_prod_slng_2_e4" {
  name         = "nyc3-prod-slng-2-e4"
  project      = var.syslog_project_id
  subnetwork   = var.syslog_vpc_subnet_e4
  address_type = "INTERNAL"
  address      = "10.2.33.131"
  region       = var.secondary_region
}
resource "google_compute_address" "nyc3_prod_slng_3_e4" {
  name         = "nyc3-prod-slng-3-e4"
  project      = var.syslog_project_id
  subnetwork   = var.syslog_vpc_subnet_e4
  address_type = "INTERNAL"
  address      = "10.2.33.132"
  region       = var.secondary_region
}
resource "google_compute_address" "nyc3_prod_slng_4_e4" {
  name         = "nyc3-prod-slng-4-e4"
  project      = var.syslog_project_id
  subnetwork   = var.syslog_vpc_subnet_e4
  address_type = "INTERNAL"
  address      = "10.2.33.133"
  region       = var.secondary_region
}
resource "google_compute_address" "nyc3_prod_slng_5_e4" {
  name         = "nyc3-prod-slng-5-e4"
  project      = var.syslog_project_id
  subnetwork   = var.syslog_vpc_subnet_e4
  address_type = "INTERNAL"
  address      = "10.2.33.134"
  region       = var.secondary_region
}
resource "google_compute_address" "nyc3_prod_slng_6_e4" {
  name         = "nyc3-prod-slng-6-e4"
  project      = var.syslog_project_id
  subnetwork   = var.syslog_vpc_subnet_e4
  address_type = "INTERNAL"
  address      = "10.2.33.135"
  region       = var.secondary_region
}
resource "google_compute_address" "nyc3_prod_slng_7_e4" {
  name         = "nyc3-prod-slng-7-e4"
  project      = var.syslog_project_id
  subnetwork   = var.syslog_vpc_subnet_e4
  address_type = "INTERNAL"
  address      = "10.2.33.136"
  region       = var.secondary_region
}
resource "google_compute_address" "nyc3_prod_slng_8_e4" {
  name         = "nyc3-prod-slng-8-e4"
  project      = var.syslog_project_id
  subnetwork   = var.syslog_vpc_subnet_e4
  address_type = "INTERNAL"
  address      = "10.2.33.137"
  region       = var.secondary_region
}
resource "google_compute_address" "nyc3_prod_slng_9_e4" {
  name         = "nyc3-prod-slng-9-e4"
  project      = var.syslog_project_id
  subnetwork   = var.syslog_vpc_subnet_e4
  address_type = "INTERNAL"
  address      = "10.2.33.138"
  region       = var.secondary_region
}
# resource "google_compute_address" "nyc3_prod_slng_10_e4" {
#   name         = "nyc3-prod-slng-10-e4"
#   project      = var.syslog_project_id
#   subnetwork   = var.syslog_vpc_subnet_e4
#   address_type = "INTERNAL"
#   address      = "10.2.33.139"
#   region       = var.secondary_region
# }

