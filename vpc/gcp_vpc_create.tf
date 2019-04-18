



resource "google_compute_subnetwork" "subnet" {
  name = "sub1-subnet"
  ip_cidr_range = "10.10.0.0/24"
  depends_on    = ["google_compute_network.vpc"]  
  network = "${google_compute_network.vpc.name}"
  region = "us-east1" 
}


resource "google_compute_network" "vpc" {
name = "test-vpc"
auto_create_subnetworks = "false"
}


