# Network Configurations

resource "google_compute_network" "nyc3_dev_sbx_vpc" {
  name                    = var.vpc_network
  auto_create_subnetworks = "false"
  mtu                     = 1500

}
resource "google_compute_subnetwork" "nyc3_dev_sbx_subnet" {
  name          = var.vpc_subnet
  ip_cidr_range = var.vpc_subnet_range
  region        = var.primary_region
  //todo add new variable(s) for subnets
  network       = google_compute_network.nyc3_dev_sbx_vpc.name

}