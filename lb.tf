//////////////
// east 1 Load Balancers
//////////////
resource "google_compute_instance" "nyc3_dev_avi_lb_controller_1_e1" {

  //TODO: Probably should remove the following at some point.
  allow_stopping_for_update = true
  project                   = var.avi_project_id
  name                      = "nyc3-dev-avi-lb-controller-1-e1"
  machine_type              = "e2-highmem-8"
  zone                      = var.primary_zones.0

  boot_disk {
    initialize_params {
      image = var.lb_disk_image
      size  = 128
    }
  }

  tags = ["avi-ctrl"]
  network_interface {
    subnetwork = var.avi_vpc_subnet_self_link_e1
    network_ip = google_compute_address.nyc3_prod_avi_ctrl_1_e1.address
  }

  service_account {
    email  = var.lb_service_account
    scopes = ["cloud-platform"]
  }
}

resource "google_compute_instance" "nyc3_dev_avi_lb_controller_2_e1" {

  //TODO: Probably should remove the following at some point.
  allow_stopping_for_update = true
  project                   = var.avi_project_id
  name                      = "nyc3-dev-avi-lb-controller-2-e1"
  machine_type              = "e2-highmem-8"
  zone                      = var.primary_zones.1

  boot_disk {
    initialize_params {
      image = var.lb_disk_image
      size  = 128
    }
  }

  tags = ["avi-ctrl"]
  network_interface {
    subnetwork = var.avi_vpc_subnet_self_link_e1
    network_ip = google_compute_address.nyc3_prod_avi_ctrl_2_e1.address
  }

  service_account {
    email  = var.lb_service_account
    scopes = ["cloud-platform"]
  }
}

resource "google_compute_instance" "nyc3_dev_avi_lb_controller_3_e1" {

  //TODO: Probably should remove the following at some point.
  allow_stopping_for_update = true
  project                   = var.avi_project_id
  name                      = "nyc3-dev-avi-lb-controller-3-e1"
  machine_type              = "e2-highmem-8"
  zone                      = var.primary_zones.2

  boot_disk {
    initialize_params {
      image = var.lb_disk_image
      size  = 128
    }
  }

  tags = ["avi-ctrl"]
  network_interface {
    subnetwork = var.avi_vpc_subnet_self_link_e1
    network_ip = google_compute_address.nyc3_prod_avi_ctrl_3_e1.address
  }

  service_account {
    email  = var.lb_service_account
    scopes = ["cloud-platform"]
  }
}


//////////////
// east 4 Load Balancers
//////////////
resource "google_compute_instance" "nyc3_dev_avi_lb_controller_1_e4" {

  //TODO: Probably should remove the following at some point.
  allow_stopping_for_update = true
  project                   = var.avi_project_id
  name                      = "nyc3-dev-avi-lb-controller-1-e4"
  machine_type              = "e2-highmem-8"
  zone                      = var.primary_zones.0

  boot_disk {
    initialize_params {
      image = var.lb_disk_image
      size  = 128
    }
  }

  tags = ["avi-ctrl"]
  network_interface {
    subnetwork = var.avi_vpc_subnet_self_link_e4
    network_ip = google_compute_address.nyc3_prod_avi_ctrl_1_e4.address
  }

  service_account {
    email  = var.lb_service_account
    scopes = ["cloud-platform"]
  }
}

resource "google_compute_instance" "nyc3_dev_avi_lb_controller_2_e4" {

  //TODO: Probably should remove the following at some point.
  allow_stopping_for_update = true
  project                   = var.avi_project_id
  name                      = "nyc3-dev-avi-lb-controller-2-e4"
  machine_type              = "e2-highmem-8"
  zone                      = var.primary_zones.1

  boot_disk {
    initialize_params {
      image = var.lb_disk_image
      size  = 128
    }
  }

  tags = ["avi-ctrl"]
  network_interface {
    subnetwork = var.avi_vpc_subnet_self_link_e4
    network_ip = google_compute_address.nyc3_prod_avi_ctrl_2_e4.address
  }

  service_account {
    email  = var.lb_service_account
    scopes = ["cloud-platform"]
  }
}

resource "google_compute_instance" "nyc3_dev_avi_lb_controller_3_e4" {

  //TODO: Probably should remove the following at some point.
  allow_stopping_for_update = true
  project                   = var.avi_project_id
  name                      = "nyc3-dev-avi-lb-controller-3-e4"
  machine_type              = "e2-highmem-8"
  zone                      = var.primary_zones.2

  boot_disk {
    initialize_params {
      image = var.lb_disk_image
      size  = 128
    }
  }

  tags = ["avi-ctrl"]
  network_interface {
    subnetwork = var.avi_vpc_subnet_self_link_e4
    network_ip = google_compute_address.nyc3_prod_avi_ctrl_3_e4.address
  }

  service_account {
    email  = var.lb_service_account
    scopes = ["cloud-platform"]
  }
}
