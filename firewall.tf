#######################
## EAST1 Firewall Rules
#######################

resource "google_compute_firewall" "allow_ssh_ingress_via_iap_to_edge_e1" {
  name = "allow-ssh-ingress-via-iap-to-edge-e1"
  //todo Replace with the correct network link
  #   network   = google_compute_network.nyc3_dev_vpc.self_link
  target_tags = ["slng"]
  direction   = "INGRESS"
  priority    = 1000

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["35.235.240.0/20"]
  # Enabled the following section in order to enable firewall logs
  # log_config {
  #   metadata = "INCLUDE_ALL_METADATA"
  # }
}

resource "google_compute_firewall" "allow_ssh_ingress_via_iap_to_hub_e1" {
  name = "allow-ssh-ingress-via-iap-to-hub-e1"
  //todo Replace with the correct network link
  # network   = google_compute_network.nyc3_dev_vpc.self_link
  direction = "INGRESS"

  allow {
    protocol = "tcp"
    ports    = ["443", "22"]
  }

  target_tags   = ["slng", "ansbl", "avi-ctrl", "avi-se", "avi-backup"]
  source_ranges = ["35.235.240.0/20"]
  priority      = 1000
  # Enabled the following section in order to enable firewall logs
  # log_config {
  #   metadata = "INCLUDE_ALL_METADATA"
  # }
}

resource "google_compute_firewall" "avi_controller_and_se_e1" {
  name = "avi-controller-and-se-e1"
  //todo Fix network link
  # network   = google_compute_network.nyc3_dev_vpc.self_link
  direction = "INGRESS"

  allow {
    protocol = "tcp"
    ports    = ["22", "443", "5098", "8443"]
  }

  allow {
    protocol = "udp"
    ports    = ["123", "1550"]
  }

  allow {
    protocol = "icmp"
  }

  target_tags = ["avi-se", "avi-ctrl"]
  source_tags = ["avi-se", "avi-backup"]
  priority    = 1000
  # log_config {
  #   metadata = "INCLUDE_ALL_METADATA"
  # }
}

#######################
## EAST4 Firewall Rules
#######################


resource "google_compute_firewall" "allow_ssh_ingress_via_iap_to_edge_e4" {
  name = "allow-ssh-ingress-via-iap-to-edge-e4"
  //todo Replace with the correct network link
  #   network   = google_compute_network.nyc3_dev_vpc.self_link
  target_tags = ["slng"]
  direction   = "INGRESS"
  priority    = 1000

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["35.235.240.0/20"]
  # Enabled the following section in order to enable firewall logs
  # log_config {
  #   metadata = "INCLUDE_ALL_METADATA"
  # }
}

resource "google_compute_firewall" "allow_ssh_ingress_via_iap_to_hub_e4" {
  name = "allow-ssh-ingress-via-iap-to-hub-e4"
  //todo Replace with the correct network link
  # network   = google_compute_network.nyc3_dev_vpc.self_link
  direction = "INGRESS"

  allow {
    protocol = "tcp"
    ports    = ["443", "22"]
  }

  target_tags   = ["slng", "ansbl", "avi-ctrl", "avi-se"]
  source_ranges = ["35.235.240.0/20"]
  priority      = 1000
  # Enabled the following section in order to enable firewall logs
  # log_config {
  #   metadata = "INCLUDE_ALL_METADATA"
  # }
}

resource "google_compute_firewall" "avi_controller_and_se_e4" {
  name = "avi-controller-and-se-e4"
  //todo Fix network link
  # network   = google_compute_network.nyc3_dev_vpc.self_link
  direction = "INGRESS"

  allow {
    protocol = "tcp"
    ports    = ["22", "443", "5098", "8443"]
  }

  allow {
    protocol = "udp"
    ports    = ["123", "1550"]
  }

  allow {
    protocol = "icmp"
  }

  target_tags = ["avi-se", "avi-ctrl"]
  source_tags = ["avi-se", "avi-backup"]
  priority    = 1000
  # log_config {
  #   metadata = "INCLUDE_ALL_METADATA"
  # }
}


