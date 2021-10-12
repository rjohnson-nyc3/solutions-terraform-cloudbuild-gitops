vpc_network_e1      = "nyc3-prod-slng-vpc-e1"
vpc_subnet_e1       = "slng-10-2-32-128-25"
vpc_subnet_range_e1 = "10.2.32.128/25"

vpc_network_e4      = "nyc3-prod-slng-vpc-e4"
vpc_subnet_e4       = "slng-10-2-33-128-25"
vpc_subnet_range_e4 = "10.2.33.128/25"

//TODO: Need to see what account this should be.
service_account = "terraform@nyc3-prod-styx.iam.gserviceaccount.com"

labels = { env = "prod", creator = "terraform" }

//TODO: Need to see what account this should be.
vm_service_account = {
  email  = "terraform@nyc3-dev-sbx-syslog.iam.gserviceaccount.com"
  scopes = ["cloud-platform"]
}