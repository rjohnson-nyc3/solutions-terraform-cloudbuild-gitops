module "vm_instance_template" {
  source  = "terraform-google-modules/vm/google//modules/instance_template"
  version = "6.4.0"

  region = var.gcp_region
  project_id = var.gcp_project
  labels = var.labels
  network = var.gcp_vpc_network
  subnetwork = var.gcp_vpc_subnet
  service_account = var.vm_service_account



}

module "vm_umig" {
  source  = "terraform-google-modules/vm/google//modules/umig"
  version = "6.4.0"

  region = var.gcp_region
  project_id = var.gcp_project
  instance_template = module.vm_instance_template.self_link
  subnetwork = var.gcp_vpc_subnet
}
