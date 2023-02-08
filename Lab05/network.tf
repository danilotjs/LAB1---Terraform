resource "google_compute_network" "tf-vpc-lab" {
  name = var.vpc_name

  auto_create_subnetworks = var.option_auto_create
}
