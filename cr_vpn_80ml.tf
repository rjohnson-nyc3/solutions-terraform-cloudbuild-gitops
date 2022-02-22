# resource "google_compute_router" "nyc3_80ml_rtr_e1" {
#   name    = "nyc3-80ml-rtr-e1"
#   project = var.avi_project_id
#   network = "projects/nyc3-dev-hostnetwork/global/networks/nyc3-dev-hub-vpc-e1"
#   bgp {
#     asn            = 64514
#     advertise_mode = "CUSTOM"
#     advertised_ip_ranges {
#       range = "10.139.254.0/25"
#     }
#     advertised_ip_ranges {
#       range = "10.101.0.0/24"
#     }
#     advertised_ip_ranges {
#       range = "10.2.26.128/25"
#     }
#     advertised_ip_ranges {
#       range = "10.139.254.0/24"
#     }
#     advertised_ip_ranges {
#       range = "10.100.0.0/24"
#     }
#     advertised_ip_ranges {
#       range = "10.100.0.0/23"
#     }
#   }
# }