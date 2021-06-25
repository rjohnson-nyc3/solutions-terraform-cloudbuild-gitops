resource "google_compute_instance_from_machine_image" "slng_dev_east1_za_tcp1" {
  provider = google-beta
  name     = "slng-dev-east1-za-tcp1"
  zone     = var.primary_zones.0
  network_interface {
    subnetwork = google_compute_subnetwork.nyc3_dev_sbx_subnet.self_link
  }
  source_machine_image = var.source_machine_image
  tags          = ["slng"]
}

resource "google_compute_instance_from_machine_image" "slng_dev_east1_za_tcp2" {
  provider = google-beta
  name     = "slng-dev-east1-za-tcp2"
  zone     = var.primary_zones.0
  network_interface {
    subnetwork = google_compute_subnetwork.nyc3_dev_sbx_subnet.self_link
  }
  source_machine_image = var.source_machine_image
  tags          = ["slng"]
}

resource "google_compute_instance_from_machine_image" "slng_dev_east1_zb_tcp1" {
  provider = google-beta
  name     = "slng-dev-east1-zb-tcp1"
  zone     = var.primary_zones.1
  network_interface {
    subnetwork = google_compute_subnetwork.nyc3_dev_sbx_subnet.self_link
  }
  source_machine_image = var.source_machine_image
  tags          = ["slng"]
}

resource "google_compute_instance_from_machine_image" "slng_dev_east1_zb_tcp2" {
  provider = google-beta
  name     = "slng-dev-east1-zb-tcp2"
  zone     = var.primary_zones.1
  network_interface {
    subnetwork = google_compute_subnetwork.nyc3_dev_sbx_subnet.self_link
  }
  source_machine_image = var.source_machine_image
  tags          = ["slng"]
}

resource "google_compute_instance_from_machine_image" "slng_dev_east1_zc_tcp1" {
  provider = google-beta
  name     = "slng-dev-east1-zc-tcp1"
  zone     = var.primary_zones.2
  network_interface {
    subnetwork = google_compute_subnetwork.nyc3_dev_sbx_subnet.self_link
  }
  source_machine_image = var.source_machine_image
  tags          = ["slng"]
}

resource "google_compute_instance_from_machine_image" "slng_dev_east1_zc_tcp2" {
  provider = google-beta
  name     = "slng-dev-east1-zc-tcp2"
  zone     = var.primary_zones.2
  network_interface {
    subnetwork = google_compute_subnetwork.nyc3_dev_sbx_subnet.self_link
  }
  source_machine_image = var.source_machine_image
  tags          = ["slng"]
}

###################

resource "google_compute_instance_from_machine_image" "slng_dev_east1_za_udp1" {
  provider = google-beta
  name     = "slng-dev-east1-za-udp1"
  zone     = var.primary_zones.0
  network_interface {
    subnetwork = google_compute_subnetwork.nyc3_dev_sbx_subnet.self_link
  }
  source_machine_image = var.source_machine_image
  tags          = ["slng"]
}

resource "google_compute_instance_from_machine_image" "slng_dev_east1_za_udp2" {
  provider = google-beta
  name     = "slng-dev-east1-za-udp2"
  zone     = var.primary_zones.0
  network_interface {
    subnetwork = google_compute_subnetwork.nyc3_dev_sbx_subnet.self_link
  }
  source_machine_image = var.source_machine_image
  tags          = ["slng"]
}

resource "google_compute_instance_from_machine_image" "slng_dev_east1_zb_udp1" {
  provider = google-beta
  name     = "slng-dev-east1-zb-udp1"
  zone     = var.primary_zones.1
  network_interface {
    subnetwork = google_compute_subnetwork.nyc3_dev_sbx_subnet.self_link
  }
  source_machine_image = var.source_machine_image
  tags          = ["slng"]
}

resource "google_compute_instance_from_machine_image" "slng_dev_east1_zb_udp2" {
  provider = google-beta
  name     = "slng-dev-east1-zb-udp2"
  zone     = var.primary_zones.1
  network_interface {
    subnetwork = google_compute_subnetwork.nyc3_dev_sbx_subnet.self_link
  }
  source_machine_image = var.source_machine_image
  tags          = ["slng"]
}

resource "google_compute_instance_from_machine_image" "slng_dev_east1_zc_udp1" {
  provider = google-beta
  name     = "slng-dev-east1-zc-udp1"
  zone     = var.primary_zones.2
  network_interface {
    subnetwork = google_compute_subnetwork.nyc3_dev_sbx_subnet.self_link
  }
  source_machine_image = var.source_machine_image
  tags          = ["slng"]
}

resource "google_compute_instance_from_machine_image" "slng_dev_east1_zc_udp2" {
  provider = google-beta
  name     = "slng-dev-east1-zc-udp2"
  zone     = var.primary_zones.2
  network_interface {
    subnetwork = google_compute_subnetwork.nyc3_dev_sbx_subnet.self_link
  }
  source_machine_image = var.source_machine_image
  tags          = ["slng"]
}