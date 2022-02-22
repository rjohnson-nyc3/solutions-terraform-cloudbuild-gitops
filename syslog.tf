//////////////
// east 1 Syslog Servers
//////////////

resource "google_compute_instance_from_machine_image" "slng_dev_zd_1_e1" {
  provider = google-beta
  name     = "slng-dev-zd-1-e1"
  zone     = var.primary_zones.0

  network_interface {
    network_ip = google_compute_address.nyc3_dev_slng_1_e1.address
    subnetwork = var.syslog_vpc_subnet_self_link_e1
  }
  source_machine_image = var.source_machine_image
  tags                 = ["slng"]
}

# resource "google_compute_instance_from_machine_image" "slng_dev_zd_2_e1" {
#   provider = google-beta
#   name     = "slng-dev-zd-2-e1"
#   zone     = var.primary_zones.0

#   network_interface {
#     network_ip = google_compute_address.nyc3_dev_slng_2_e1.address
#     subnetwork = var.syslog_vpc_subnet_self_link_e1
#   }
#   source_machine_image = var.source_machine_image
#   tags                 = ["slng"]
# }

# resource "google_compute_instance_from_machine_image" "slng_dev_zd_3_e1" {
#   provider    = google-beta
#   name        = "slng-dev-zd-3-e1"
#   zone        = var.primary_zones.0
#   description = "For Windows Events processing."

#   network_interface {
#     network_ip = google_compute_address.nyc3_dev_slng_7_e1.address
#     subnetwork = var.syslog_vpc_subnet_self_link_e1
#   }
#   source_machine_image = var.source_machine_image
#   tags                 = ["slng"]
# }

resource "google_compute_instance_from_machine_image" "slng_dev_zc_1_e1" {
  provider = google-beta
  name     = "slng-dev-zc-1-e1"
  zone     = var.primary_zones.1

  network_interface {
    network_ip = google_compute_address.nyc3_dev_slng_3_e1.address
    subnetwork = var.syslog_vpc_subnet_self_link_e1
  }
  source_machine_image = var.source_machine_image
  tags                 = ["slng"]
}

# resource "google_compute_instance_from_machine_image" "slng_dev_zc_2_e1" {
#   provider = google-beta
#   name     = "slng-dev-zc-2-e1"
#   zone     = var.primary_zones.1

#   network_interface {
#     network_ip = google_compute_address.nyc3_dev_slng_4_e1.address
#     subnetwork = var.syslog_vpc_subnet_self_link_e1
#   }
#   source_machine_image = var.source_machine_image
#   tags                 = ["slng"]
# }

# resource "google_compute_instance_from_machine_image" "slng_dev_zc_3_e1" {
#   provider    = google-beta
#   name        = "slng-dev-zc-3-e1"
#   zone        = var.primary_zones.1
#   description = "For Windows Events processing."

#   network_interface {
#     network_ip = google_compute_address.nyc3_dev_slng_8_e1.address
#     subnetwork = var.syslog_vpc_subnet_self_link_e1
#   }
#   source_machine_image = var.source_machine_image
#   tags                 = ["slng"]
# }

resource "google_compute_instance_from_machine_image" "slng_dev_zb_1_e1" {
  provider = google-beta
  name     = "slng-dev-zb-1-e1"
  zone     = var.primary_zones.2

  network_interface {
    network_ip = google_compute_address.nyc3_dev_slng_5_e1.address
    subnetwork = var.syslog_vpc_subnet_self_link_e1
  }
  source_machine_image = var.source_machine_image
  tags                 = ["slng"]
}

# resource "google_compute_instance_from_machine_image" "slng_dev_zb_2_e1" {
#   provider = google-beta
#   name     = "slng-dev-zb-2-e1"
#   zone     = var.primary_zones.2

#   network_interface {
#     network_ip = google_compute_address.nyc3_dev_slng_6_e1.address
#     subnetwork = var.syslog_vpc_subnet_self_link_e1
#   }
#   source_machine_image = var.source_machine_image
#   tags                 = ["slng"]
# }

# resource "google_compute_instance_from_machine_image" "slng_dev_zb_3_e1" {
#   provider    = google-beta
#   name        = "slng-dev-zb-3-e1"
#   zone        = var.primary_zones.2
#   description = "For Windows Events processing."

#   network_interface {
#     network_ip = google_compute_address.nyc3_dev_slng_9_e1.address
#     subnetwork = var.syslog_vpc_subnet_self_link_e1
#   }
#   source_machine_image = var.source_machine_image
#   tags                 = ["slng"]
# }

//////////////
// east 4 Syslog Servers
//////////////

resource "google_compute_instance_from_machine_image" "slng_dev_zc_1_e4" {
  provider = google-beta
  name     = "slng-dev-zc-1-e4"
  zone     = var.secondary_zones.0

  network_interface {
    network_ip = google_compute_address.nyc3_dev_slng_1_e4.address
    subnetwork = var.syslog_vpc_subnet_self_link_e4
  }
  source_machine_image = var.source_machine_image
  tags                 = ["slng"]
}

# resource "google_compute_instance_from_machine_image" "slng_dev_zc_2_e4" {
#   provider = google-beta
#   name     = "slng-dev-zc-2-e4"
#   zone     = var.secondary_zones.0

#   network_interface {
#     network_ip = google_compute_address.nyc3_dev_slng_2_e4.address
#     subnetwork = var.syslog_vpc_subnet_self_link_e4
#   }
#   source_machine_image = var.source_machine_image
#   tags                 = ["slng"]
# }

# resource "google_compute_instance_from_machine_image" "slng_dev_zc_3_e4" {
#   provider    = google-beta
#   name        = "slng-dev-zc-3-e4"
#   zone        = var.secondary_zones.0
#   description = "For Windows Events processing."

#   network_interface {
#     network_ip = google_compute_address.nyc3_dev_slng_7_e4.address
#     subnetwork = var.syslog_vpc_subnet_self_link_e4
#   }
#   source_machine_image = var.source_machine_image
#   tags                 = ["slng"]
# }

resource "google_compute_instance_from_machine_image" "slng_dev_zb_1_e4" {
  provider = google-beta
  name     = "slng-dev-zb-1-e4"
  zone     = var.secondary_zones.1

  network_interface {
    network_ip = google_compute_address.nyc3_dev_slng_3_e4.address
    subnetwork = var.syslog_vpc_subnet_self_link_e4
  }
  source_machine_image = var.source_machine_image
  tags                 = ["slng"]
}

# resource "google_compute_instance_from_machine_image" "slng_dev_zb_2_e4" {
#   provider = google-beta
#   name     = "slng-dev-zb-2-e4"
#   zone     = var.secondary_zones.1

#   network_interface {
#     network_ip = google_compute_address.nyc3_dev_slng_4_e4.address
#     subnetwork = var.syslog_vpc_subnet_self_link_e4
#   }
#   source_machine_image = var.source_machine_image
#   tags                 = ["slng"]
# }

# resource "google_compute_instance_from_machine_image" "slng_dev_zb_3_e4" {
#   provider    = google-beta
#   name        = "slng-dev-zb-3-e4"
#   zone        = var.secondary_zones.1
#   description = "For Windows Events processing."

#   network_interface {
#     network_ip = google_compute_address.nyc3_dev_slng_8_e4.address
#     subnetwork = var.syslog_vpc_subnet_self_link_e4
#   }
#   source_machine_image = var.source_machine_image
#   tags                 = ["slng"]
# }

resource "google_compute_instance_from_machine_image" "slng_dev_za_1_e4" {
  provider = google-beta
  name     = "slng-dev-za-1-e4"
  zone     = var.secondary_zones.2

  network_interface {
    network_ip = google_compute_address.nyc3_dev_slng_5_e4.address
    subnetwork = var.syslog_vpc_subnet_self_link_e4
  }
  source_machine_image = var.source_machine_image
  tags                 = ["slng"]
}

# resource "google_compute_instance_from_machine_image" "slng_dev_za_2_e4" {
#   provider = google-beta
#   name     = "slng-dev-za-2-e4"
#   zone     = var.secondary_zones.2

#   network_interface {
#     network_ip = google_compute_address.nyc3_dev_slng_6_e4.address
#     subnetwork = var.syslog_vpc_subnet_self_link_e4
#   }
#   source_machine_image = var.source_machine_image
#   tags                 = ["slng"]
# }

# resource "google_compute_instance_from_machine_image" "slng_dev_za_3_e4" {
#   provider = google-beta
#   name     = "slng-dev-za-3-e4"
#   zone     = var.secondary_zones.2

#   network_interface {
#     network_ip = google_compute_address.nyc3_dev_slng_9_e4.address
#     subnetwork = var.syslog_vpc_subnet_self_link_e4
#   }
#   source_machine_image = var.source_machine_image
#   tags                 = ["slng"]
# }