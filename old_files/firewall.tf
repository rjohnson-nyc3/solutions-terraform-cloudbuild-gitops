# firewall rules

module "firewall_rules" {
  source       = "terraform-google-modules/network/google//modules/firewall-rules"
  project_id   = var.gcp_project
  network_name = var.gcp_vpc_network

  rules = [{
    name                    = "pubsub-outbound"
    description             = null
    direction               = "EGRESS"
    priority                = null
    ranges                  = ["0.0.0.0/0"]
    source_tags             = null
    source_service_accounts = null
    target_tags             = ["slng"]
    target_service_accounts = null
    allow = [{
      protocol = "tcp"
      ports    = ["443"]
    }]
    deny = []
    log_config = {
      metadata = "INCLUDE_ALL_METADATA"
    }
  },
  {
    name                    = "allow-ingress-from-iap"
    description             = null
    direction               = "INGRESS"
    priority                = null
    ranges                  = [var.iap_range]
    source_tags             = null
    source_service_accounts = null
    target_tags             = null
    target_service_accounts = null
    allow = [{
      protocol = "tcp"
      ports    = ["22","443"]
    }]
    deny = []
    log_config = {
      metadata = "INCLUDE_ALL_METADATA"
    }
  }
  ]
}