//////////////
// east 1 Syslog Servers
//////////////

resource "google_compute_instance_from_machine_image" "slng_prod_zd_1_e1" {
  provider = google-beta
  name     = "slng-prod-zd-1-e1"
  zone     = var.primary_zones.0

  network_interface {
    network_ip = google_compute_address.nyc3_prod_slng_1_e1.address
    subnetwork = var.syslog_vpc_subnet_self_link_e1
  }
  source_machine_image = var.source_machine_image
  tags                 = ["slng"]
}

resource "google_compute_instance_from_machine_image" "slng_prod_zd_2_e1" {
  provider = google-beta
  name     = "slng-prod-zd-2-e1"
  zone     = var.primary_zones.0

  network_interface {
    network_ip = google_compute_address.nyc3_prod_slng_2_e1.address
    subnetwork = var.syslog_vpc_subnet_self_link_e1
  }
  source_machine_image = var.source_machine_image
  tags                 = ["slng"]
}

resource "google_compute_instance_from_machine_image" "slng_prod_zd_3_e1" {
  provider    = google-beta
  name        = "slng-prod-zd-3-e1"
  zone        = var.primary_zones.0
  description = "For Windows Events processing."

  network_interface {
    network_ip = google_compute_address.nyc3_prod_slng_7_e1.address
    subnetwork = var.syslog_vpc_subnet_self_link_e1
  }
  source_machine_image = var.source_machine_image
  tags                 = ["slng"]
}

resource "google_compute_instance_from_machine_image" "slng_prod_zc_1_e1" {
  provider = google-beta
  name     = "slng-prod-zc-1-e1"
  zone     = var.primary_zones.1

  network_interface {
    network_ip = google_compute_address.nyc3_prod_slng_3_e1.address
    subnetwork = var.syslog_vpc_subnet_self_link_e1
  }
  source_machine_image = var.source_machine_image
  tags                 = ["slng"]
}

resource "google_compute_instance_from_machine_image" "slng_prod_zc_2_e1" {
  provider = google-beta
  name     = "slng-prod-zc-2-e1"
  zone     = var.primary_zones.1

  network_interface {
    network_ip = google_compute_address.nyc3_prod_slng_4_e1.address
    subnetwork = var.syslog_vpc_subnet_self_link_e1
  }
  source_machine_image = var.source_machine_image
  tags                 = ["slng"]
}

resource "google_compute_instance_from_machine_image" "slng_prod_zc_3_e1" {
  provider    = google-beta
  name        = "slng-prod-zc-3-e1"
  zone        = var.primary_zones.1
  description = "For Windows Events processing."

  network_interface {
    network_ip = google_compute_address.nyc3_prod_slng_8_e1.address
    subnetwork = var.syslog_vpc_subnet_self_link_e1
  }
  source_machine_image = var.source_machine_image
  tags                 = ["slng"]
}

resource "google_compute_instance_from_machine_image" "slng_prod_zb_1_e1" {
  provider = google-beta
  name     = "slng-prod-zb-1-e1"
  zone     = var.primary_zones.2

  network_interface {
    network_ip = google_compute_address.nyc3_prod_slng_5_e1.address
    subnetwork = var.syslog_vpc_subnet_self_link_e1
  }
  source_machine_image = var.source_machine_image
  tags                 = ["slng"]
}

resource "google_compute_instance_from_machine_image" "slng_prod_zb_2_e1" {
  provider = google-beta
  name     = "slng-prod-zb-2-e1"
  zone     = var.primary_zones.2

  network_interface {
    network_ip = google_compute_address.nyc3_prod_slng_6_e1.address
    subnetwork = var.syslog_vpc_subnet_self_link_e1
  }
  source_machine_image = var.source_machine_image
  tags                 = ["slng"]
}

resource "google_compute_instance_from_machine_image" "slng_prod_zb_3_e1" {
  provider    = google-beta
  name        = "slng-prod-zb-3-e1"
  zone        = var.primary_zones.2
  description = "For Windows Events processing."

  network_interface {
    network_ip = google_compute_address.nyc3_prod_slng_9_e1.address
    subnetwork = var.syslog_vpc_subnet_self_link_e1
  }
  source_machine_image = var.source_machine_image
  tags                 = ["slng"]
}

//////////////
// east 4 Syslog Servers
//////////////

resource "google_compute_instance_from_machine_image" "slng_prod_zc_1_e4" {
  provider = google-beta
  name     = "slng-prod-zc-1-e4"
  zone     = var.secondary_zones.0

  network_interface {
    network_ip = google_compute_address.nyc3_prod_slng_1_e4.address
    subnetwork = var.syslog_vpc_subnet_self_link_e4
  }
  source_machine_image = var.source_machine_image
  tags                 = ["slng"]
}

resource "google_compute_instance_from_machine_image" "slng_prod_zc_2_e4" {
  provider = google-beta
  name     = "slng-prod-zc-2-e4"
  zone     = var.secondary_zones.0

  network_interface {
    network_ip = google_compute_address.nyc3_prod_slng_2_e4.address
    subnetwork = var.syslog_vpc_subnet_self_link_e4
  }
  source_machine_image = var.source_machine_image
  tags                 = ["slng"]
}

resource "google_compute_instance_from_machine_image" "slng_prod_zc_3_e4" {
  provider    = google-beta
  name        = "slng-prod-zc-3-e4"
  zone        = var.secondary_zones.0
  description = "For Windows Events processing."

  network_interface {
    network_ip = google_compute_address.nyc3_prod_slng_7_e4.address
    subnetwork = var.syslog_vpc_subnet_self_link_e4
  }
  source_machine_image = var.source_machine_image
  tags                 = ["slng"]
}

resource "google_compute_instance_from_machine_image" "slng_prod_zb_1_e4" {
  provider = google-beta
  name     = "slng-prod-zb-1-e4"
  zone     = var.secondary_zones.1

  network_interface {
    network_ip = google_compute_address.nyc3_prod_slng_3_e4.address
    subnetwork = var.syslog_vpc_subnet_self_link_e4
  }
  source_machine_image = var.source_machine_image
  tags                 = ["slng"]
}

resource "google_compute_instance_from_machine_image" "slng_prod_zb_2_e4" {
  provider = google-beta
  name     = "slng-prod-zb-2-e4"
  zone     = var.secondary_zones.1

  network_interface {
    network_ip = google_compute_address.nyc3_prod_slng_4_e4.address
    subnetwork = var.syslog_vpc_subnet_self_link_e4
  }
  source_machine_image = var.source_machine_image
  tags                 = ["slng"]
}

resource "google_compute_instance_from_machine_image" "slng_prod_zb_3_e4" {
  provider    = google-beta
  name        = "slng-prod-zb-3-e4"
  zone        = var.secondary_zones.1
  description = "For Windows Events processing."

  network_interface {
    network_ip = google_compute_address.nyc3_prod_slng_8_e4.address
    subnetwork = var.syslog_vpc_subnet_self_link_e4
  }
  source_machine_image = var.source_machine_image
  tags                 = ["slng"]
}

resource "google_compute_instance_from_machine_image" "slng_prod_za_1_e4" {
  provider = google-beta
  name     = "slng-prod-za-1-e4"
  zone     = var.secondary_zones.2

  network_interface {
    network_ip = google_compute_address.nyc3_prod_slng_5_e4.address
    subnetwork = var.syslog_vpc_subnet_self_link_e4
  }
  source_machine_image = var.source_machine_image
  tags                 = ["slng"]
}

resource "google_compute_instance_from_machine_image" "slng_prod_za_2_e4" {
  provider = google-beta
  name     = "slng-prod-za-2-e4"
  zone     = var.secondary_zones.2

  network_interface {
    network_ip = google_compute_address.nyc3_prod_slng_6_e4.address
    subnetwork = var.syslog_vpc_subnet_self_link_e4
  }
  source_machine_image = var.source_machine_image
  tags                 = ["slng"]
}

resource "google_compute_instance_from_machine_image" "slng_prod_za_3_e4" {
  provider = google-beta
  name     = "slng-prod-za-3-e4"
  zone     = var.secondary_zones.2

  network_interface {
    network_ip = google_compute_address.nyc3_prod_slng_9_e4.address
    subnetwork = var.syslog_vpc_subnet_self_link_e4
  }
  source_machine_image = var.source_machine_image
  tags                 = ["slng"]
}