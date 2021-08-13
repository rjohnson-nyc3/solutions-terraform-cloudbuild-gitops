# Load Balancer

resource "google_compute_instance" "nyc3_dev_avi_lb" {
  
  //FIXME: Probably should remove this at some point.
  allow_stopping_for_update = true
  project      = var.network_project_id
  name         = "nyc3-dev-avi-lb"
  machine_type = "e2-highmem-8"
  zone         = var.primary_zones.0

  tags = ["avi-controller"]

  boot_disk {
    initialize_params {
      image = "projects/nyc3-dev-eds-avalon/global/images/avi-controller"
    }
  }

  // Local SSD disk
  # scratch_disk {
  #   interface = "SCSI"
  # }

//TODO: Make sure this is the correct vpc
  network_interface {
    subnetwork = "projects/nyc3-dev-hostnetwork/regions/us-east1/subnetworks/net-10-139-255-197bm27"

    # access_config {
    #   // Ephemeral IP
    # }
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