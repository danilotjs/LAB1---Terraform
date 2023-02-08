resource "google_compute_instance" "dbserver1" {
  name         = var.db_vm_name
  machine_type = var.default_vm_size
  zone         = local.db_data_zone

  tags = ["allow-ssh"]

  boot_disk {
    initialize_params {
      image = var.default_vm_image
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.subnet1.self_link

    access_config {

    }
  }

  attached_disk {
    source = google_compute_disk.dados.self_link
  }

  allow_stopping_for_update = true
}