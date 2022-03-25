resource "google_compute_firewall" "allow_ssh_ingress_via_iap_to_edge_e1" {
  name        = "allow-ssh-ingress-via-iap-to-edge-e1"
  target_tags = ["slng"]
  direction   = "INGRESS"
  priority    = 1000
  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
  source_ranges = ["35.235.240.0/20"]
  log_config {
    metadata = "INCLUDE_ALL_METADATA"
  }
}

resource "google_compute_firewall" "allow_ssh_ingress_via_iap_to_edge_e4" {
  name        = "allow-ssh-ingress-via-iap-to-edge-e4"
  target_tags = ["slng"]
  direction   = "INGRESS"
  priority    = 1000
  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
  source_ranges = ["35.235.240.0/20"]
  log_config {
    metadata = "INCLUDE_ALL_METADATA"
  }
}
resource "google_compute_firewall" "allow_ssh_ingress_via_iap_to_hub_e1" {
  name        = "allow-ssh-ingress-via-iap-to-hub-e1"
  direction   = "INGRESS"
  target_tags = ["slng", "ansbl", "avi-ctrl", "avi-se", "av"]

}
# resource "google_compute_firewall" "name" {
#   direction = "INGRESS"
# }
# resource "google_compute_firewall" "name" {
#   direction = "INGRESS"
# }
# resource "google_compute_firewall" "name" {
#   direction = "INGRESS"
# }
# resource "google_compute_firewall" "name" {
#   direction = "INGRESS"
# }
# resource "google_compute_firewall" "name" {
#   direction = "INGRESS"
# }
# resource "google_compute_firewall" "name" {
#   direction = "INGRESS"
# }
# resource "google_compute_firewall" "name" {
#   direction = "INGRESS"
# }
# resource "google_compute_firewall" "name" {
#   direction = "INGRESS"
# }
# resource "google_compute_firewall" "name" {
#   direction = "INGRESS"
# }
# resource "google_compute_firewall" "name" {
#   direction = "INGRESS"
# }
# resource "google_compute_firewall" "name" {
#   direction = "INGRESS"
# }




###################################
# resource "google_compute_firewall" "pubsub_outbound" {
#   name      = "pubsub-outbound"
#   network   = google_compute_network.nyc3_dev_vpc.self_link
#   direction = "EGRESS"

#   allow {
#     protocol = "tcp"
#     ports    = ["443"]
#   }

#   target_tags        = ["slng"]
#   destination_ranges = ["0.0.0.0/0"]
#   priority           = 1000
#   log_config {
#     metadata = "INCLUDE_ALL_METADATA"
#   }
# }

# resource "google_compute_firewall" "allow_ingress_from_iap" {
#   name      = "allow-ingress-from-iap"
#   network   = google_compute_network.nyc3_dev_vpc.self_link
#   direction = "INGRESS"

#   allow {
#     protocol = "tcp"
#     ports    = ["443", "22"]
#   }

#   source_ranges = ["35.235.240.0/20"]
#   priority      = 1000
#   log_config {
#     metadata = "INCLUDE_ALL_METADATA"
#   }
# }

# resource "google_compute_firewall" "avi_sc_slng_ingress" {
#   name      = "avi-sc-slng-ingress"
#   network   = google_compute_network.nyc3_dev_vpc.self_link
#   direction = "INGRESS"

#   allow {
#     protocol = "tcp"
#     ports    = ["514", "443", "5514"]
#   }

#   allow {
#     protocol = "udp"
#     ports    = ["514"]
#   }

#   allow {
#     protocol = "icmp"
#   }

#   target_tags   = ["slng"]
#   source_ranges = ["0.0.0.0/0"]
#   priority      = 1000
#   log_config {
#     metadata = "INCLUDE_ALL_METADATA"
#   }
# }

# resource "google_compute_firewall" "public_allow_firewall_healthchecker" {
#   name      = "public-allow-firewall-healthchecker"
#   network   = google_compute_network.nyc3_dev_vpc.self_link
#   direction = "INGRESS"

#   allow {
#     protocol = "tcp"
#     ports    = ["514"]
#   }

#   source_ranges = ["130.211.0.0/20"]
#   priority      = 1000
#   log_config {
#     metadata = "INCLUDE_ALL_METADATA"
#   }
# }

# resource "google_compute_firewall" "public_allow_internal_tcp_firewall" {
#   name      = "public-allow-internal-tcp-firewall"
#   network   = google_compute_network.nyc3_dev_vpc.self_link
#   direction = "INGRESS"

#   allow {
#     protocol = "tcp"
#     ports    = ["1-65535"]
#   }

#   source_ranges = ["10.1.144.0/20"]
#   priority      = 1000
#   log_config {
#     metadata = "INCLUDE_ALL_METADATA"
#   }
# }

# resource "google_compute_firewall" "public_allow_internal_udp_firewall" {
#   name      = "public-allow-internal-udp-firewall"
#   network   = google_compute_network.nyc3_dev_vpc.self_link
#   direction = "INGRESS"

#   allow {
#     protocol = "udp"
#     ports    = ["1-65535"]
#   }

#   source_ranges = ["10.1.144.0/20"]
#   priority      = 1000
# }

# resource "google_compute_firewall" "syslogng_fw_vm_service" {
#   name      = "syslogng-fw-vm-service"
#   network   = google_compute_network.nyc3_dev_vpc.self_link
#   direction = "INGRESS"

#   allow {
#     protocol = "udp"
#     ports    = ["514"]
#   }

#   source_ranges = ["10.159.148.0/23"]
#   priority      = 1000
# }

# resource "google_compute_firewall" "ingress_deny" {
#   name      = "ingress-deny"
#   network   = google_compute_network.nyc3_dev_vpc.self_link
#   direction = "INGRESS"

#   deny {
#     protocol = "all"
#   }

#   source_ranges = ["0.0.0.0/0"]
#   priority      = 61000
#   log_config {
#     metadata = "INCLUDE_ALL_METADATA"
#   }
#   disabled = "true"
# }