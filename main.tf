provider "google" {
  project     = var.project_name
  region      = var.region_name
  credentials = "./cred.json" 
}
resource "google_compute_network" "hello_test_vpc_network" {
  name = "hello-vpc-network"
}
resource "google_compute_subnetwork" "public-subnetwork" {
name = "hello-terraform-subnetwork"
ip_cidr_range = "10.2.0.0/16"
region = "us-central1"
network = google_compute_network.hello_test_vpc_network.name
}
