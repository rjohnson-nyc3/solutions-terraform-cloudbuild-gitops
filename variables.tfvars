vpc_network      = "nyc3-dev-sbx-syslog-vpc"
vpc_subnet       = "nyc3-dev-sbx-syslog-subnet"
vpc_subnet_range = "10.10.30.0/24"

service_account = "terraform@nyc3-dev-sbx-syslog.iam.gserviceaccount.com"
num_instances   = 3
labels          = { env = "dev-sbx", creator = "terraform" }

vm_service_account = {
  email  = "terraform@nyc3-dev-sbx-syslog.iam.gserviceaccount.com"
  scopes = ["cloud-platform"]
}