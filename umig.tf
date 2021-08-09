# resource "google_compute_instance_group" "slng_east1_za_tcp" {
#   name        = "slng-east1-za-tcp"
#   description = "Terraform test instance group"
#   zone        = var.primary_zones.0
#   network     = google_compute_network.nyc3_dev_sbx_vpc.id

#   instances = [ google_compute_instance_from_machine_image.slng_dev_east1_za_tcp1.id,
#                 google_compute_instance_from_machine_image.slng_dev_east1_za_tcp2.id ]
#   named_port {
#     name = "slng"
#     port = "514"
#   }
# } 

# resource "google_compute_instance_group" "slng_east1_zb_tcp" {
#   name        = "slng-east1-zb-tcp"
#   description = "Terraform test instance group"
#   zone        = var.primary_zones.1
#   network     = google_compute_network.nyc3_dev_sbx_vpc.id

#   instances = [ google_compute_instance_from_machine_image.slng_dev_east1_zb_tcp1.id,
#                 google_compute_instance_from_machine_image.slng_dev_east1_zb_tcp2.id ]
#   named_port {
#     name = "slng"
#     port = "514"
#   }                
# } 

# resource "google_compute_instance_group" "slng_east1_zc_tcp" {
#   name        = "slng-east1-zc-tcp"
#   description = "Terraform test instance group"
#   zone        = var.primary_zones.2
#   network     = google_compute_network.nyc3_dev_sbx_vpc.id

#   instances = [ google_compute_instance_from_machine_image.slng_dev_east1_zc_tcp1.id,
#                 google_compute_instance_from_machine_image.slng_dev_east1_zc_tcp2.id ]
#   named_port {
#     name = "slng"
#     port = "514"
#   }                
# } 

# resource "google_compute_instance_group" "slng_east1_za_udp" {
#   name        = "slng-east1-za-udp"
#   description = "Terraform test instance group"
#   zone        = var.primary_zones.0
#   network     = google_compute_network.nyc3_dev_sbx_vpc.id

#   instances = [ google_compute_instance_from_machine_image.slng_dev_east1_za_udp1.id,
#                 google_compute_instance_from_machine_image.slng_dev_east1_za_udp2.id ]
#   named_port {
#     name = "slng"
#     port = "514"
#   }                
# } 

# resource "google_compute_instance_group" "slng_east1_zb_udp" {
#   name        = "slng-east1-zb-udp"
#   description = "Terraform test instance group"
#   zone        = var.primary_zones.1
#   network     = google_compute_network.nyc3_dev_sbx_vpc.id

#   instances = [ google_compute_instance_from_machine_image.slng_dev_east1_zb_udp1.id,
#                 google_compute_instance_from_machine_image.slng_dev_east1_zb_udp2.id ]
#   named_port {
#     name = "slng"
#     port = "514"
#   }                
# } 

# resource "google_compute_instance_group" "slng_east1_zc_udp" {
#   name        = "slng-east1-zc-udp"
#   description = "Terraform test instance group"
#   zone        = var.primary_zones.2
#   network     = google_compute_network.nyc3_dev_sbx_vpc.id

#   instances = [ google_compute_instance_from_machine_image.slng_dev_east1_zc_udp1.id,
#                 google_compute_instance_from_machine_image.slng_dev_east1_zc_udp2.id ]
#   named_port {
#     name = "slng"
#     port = "514"
#   }                
# } 