module "network" {
  source  = "app.terraform.io/sergebg-training/network/google"
  version = "2.5.0"
  # insert required variables here
  network_name = "sergebg-network"
  project_id = var.project
  subnets = [
  {
    subnet_name   = "sergebg-subnet"
    subnet_ip     = "10.100.10.0/24"
    subnet_region = var.region
  }
]
}