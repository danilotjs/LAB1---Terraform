resource "google_compute_instance" "vm2" {
  name         = "vm2"
  machine_type = "e2-small"
  zone         = "southamerica-east1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "vpc-lab02"

    access_config {
    }

  }
}
