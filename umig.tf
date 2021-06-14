resource "google_compute_instance_group" "test" {
  name        = "slng-east1-"
  description = "Terraform test instance group"
  zone        = var.primary_zones.0
  network     = google_compute_network.nyc3_dev_sbx_vpc.id

  instances = [ google_compute_instance.slng_dev_7022_east1_za_1.id ]

} 