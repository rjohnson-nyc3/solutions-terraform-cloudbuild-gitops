module "vpc" {
    source  = "terraform-google-modules/network/google"
    version = "~> 3.0"

    project_id   = var.gcp_project
    network_name = var.gcp_vpc_network
    routing_mode = "GLOBAL"

    subnets = [

        {
            subnet_name               = var.gcp_vpc_subnet
            subnet_ip                 = var.gcp_vpc_subnet_range
            subnet_region             = var.gcp_region
        }
    ]
}