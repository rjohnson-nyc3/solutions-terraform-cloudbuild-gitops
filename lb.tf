# Load Balancer3
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

resource "google_compute_instance" "nyc3_dev_avi_lb_controller_1" {
  
  //FIXME: Probably should remove this at some point.
  allow_stopping_for_update = true
  project      = var.network_project_id
  name         = "nyc3-dev-avi-lb-controller-1"
  machine_type = "e2-highmem-8"
  zone         = var.primary_zones.0

  tags = ["avi-controller"]

  boot_disk {
    initialize_params {
      image = "projects/nyc3-dev-eds-avalon/global/images/avi-controller"
      size = 128
    }
  }

  // Local SSD disk
  # scratch_disk {
  #   interface = "SCSI"
  # }

//TODO: Make sure this is the correct vpc
  network_interface {
    subnetwork = "projects/nyc3-dev-hostnetwork/regions/us-east1/subnetworks/net-10-10-100-0-24"
    network_ip = google_compute_address.nyc3_dev_avi_internal_static_ip_1.address
  }

  # metadata = {
  #   foo = "bar"
  # }

//TODO: Add correct startup script to configure machine.
  # metadata_startup_script = "echo hi > /test.txt"

  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = var.lb_service_account
    scopes = ["cloud-platform"]
  }
}


resource "google_compute_instance" "nyc3_dev_avi_lb_controller_2" {
  
  //FIXME: Probably should remove this at some point.
  allow_stopping_for_update = true
  project      = var.network_project_id
  name         = "nyc3-dev-avi-lb-controller-2"
  machine_type = "e2-highmem-8"
  zone         = var.primary_zones.0

  tags = ["avi-controller"]

  boot_disk {
    initialize_params {
      image = "projects/nyc3-dev-eds-avalon/global/images/avi-controller"
      size = 128
    }
  }

  // Local SSD disk
  # scratch_disk {
  #   interface = "SCSI"
  # }

//TODO: Make sure this is the correct vpc
  network_interface {
    subnetwork = "projects/nyc3-dev-hostnetwork/regions/us-east1/subnetworks/net-10-10-100-0-24"
    network_ip = google_compute_address.nyc3_dev_avi_internal_static_ip_2.address
  }

  # metadata = {
  #   foo = "bar"
  # }

//TODO: Add correct startup script to configure machine.
  # metadata_startup_script = "echo hi > /test.txt"

  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = var.lb_service_account
    scopes = ["cloud-platform"]
  }
}


resource "google_compute_instance" "nyc3_dev_avi_lb_controller_3" {
  
  //FIXME: Probably should remove this at some point.
  allow_stopping_for_update = true
  project      = var.network_project_id
  name         = "nyc3-dev-avi-lb-controller-3"
  machine_type = "e2-highmem-8"
  zone         = var.primary_zones.0

  tags = ["avi-controller"]

  boot_disk {
    initialize_params {
      image = "projects/nyc3-dev-eds-avalon/global/images/avi-controller"
      size = 128
    }
  }

  // Local SSD disk
  # scratch_disk {
  #   interface = "SCSI"
  # }

//TODO: Make sure this is the correct vpc
  network_interface {
    subnetwork = "projects/nyc3-dev-hostnetwork/regions/us-east1/subnetworks/net-10-10-100-0-24"
    network_ip = google_compute_address.nyc3_dev_avi_internal_static_ip_3.address
  }

  # metadata = {
  #   foo = "bar"
  # }

//TODO: Add correct startup script to configure machine.
  # metadata_startup_script = "echo hi > /test.txt"

  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = var.lb_service_account
    scopes = ["cloud-platform"]
  }
}