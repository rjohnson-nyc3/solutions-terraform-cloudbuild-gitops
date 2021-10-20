
//TODO: Need to see what account this should be.
service_account = "terraform@nyc3-prod-styx.iam.gserviceaccount.com"

labels = { env = "prod", creator = "terraform" }

//TODO: Need to see what account this should be.
vm_service_account = {
  email  = "terraform@nyc3-dev-sbx-syslog.iam.gserviceaccount.com"
  scopes = ["cloud-platform"]
}