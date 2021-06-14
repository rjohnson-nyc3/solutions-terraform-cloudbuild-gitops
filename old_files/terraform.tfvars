# GCP Settings
gcp_project = "nyc3-dev-sbx-syslog"
gcp_region  = "us-east1"
gcp_zone = "us-east1-d"
gcp_vpc_network = "nyc3-dev-sbx-syslog-vpc"
gcp_vpc_subnet = "nyc3-dev-sbx-syslog-subnet"
gcp_vpc_subnet_range = "10.10.30.0/24"

service_account = "terraform@nyc3-dev-sbx-syslog.iam.gserviceaccount.com"
num_instances = 3
labels = {env = "dev-sbx", creator = "terraform"} 

vm_service_account = {
    email = "terraform@nyc3-dev-sbx-syslog.iam.gserviceaccount.com"
    scopes = ["cloud-platform"]
}