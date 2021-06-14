resource "google_compute_instance" "slng_dev_7022_east1_za_1" {
  name          = "slng-dev-7022-east1-za-1"
  machine_type  = "e2-standard-8"
  zone          = var.primary_zones.0
  tags          = ["slng"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    # A default network is created for all GCP projects
    subnetwork = google_compute_subnetwork.nyc3_dev_sbx_subnet.self_link
  }
}