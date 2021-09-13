# Network Configurations
resource "google_compute_address" "nyc3_dev_avi_internal_static_ip_1" {
  name         = "nyc3-dev-avi-internal-static-ip-1"
  project      = var.network_project_id
  subnetwork   = "projects/nyc3-dev-hostnetwork/regions/us-east1/subnetworks/net-10-10-100-0-24"
  address_type = "INTERNAL"
  address      = "10.10.100.11"
  region       = var.primary_region
}
resource "google_compute_address" "nyc3_dev_avi_internal_static_ip_2" {
  name         = "nyc3-dev-avi-internal-static-ip-2"
  project      = var.network_project_id
  subnetwork   = "projects/nyc3-dev-hostnetwork/regions/us-east1/subnetworks/net-10-10-100-0-24"
  address_type = "INTERNAL"
  address      = "10.10.100.12"
  region       = var.primary_region
}
resource "google_compute_address" "nyc3_dev_avi_internal_static_ip_3" {
  name         = "nyc3-dev-avi-internal-static-ip-3"
  project      = var.network_project_id
  subnetwork   = "projects/nyc3-dev-hostnetwork/regions/us-east1/subnetworks/net-10-10-100-0-24"
  address_type = "INTERNAL"
  address      = "10.10.100.13"
  region       = var.primary_region
}


# resource "google_compute_network" "nyc3_dev_sbx_vpc" {
#   name                    = var.vpc_network
#   auto_create_subnetworks = "false"
#   mtu = 1500
# }

# resource "google_compute_subnetwork" "nyc3_dev_sbx_subnet" {
#   name          = var.vpc_subnet
#   ip_cidr_range = var.vpc_subnet_range
#   region        = var.primary_region
#   network       = google_compute_network.nyc3_dev_sbx_vpc.name
# }