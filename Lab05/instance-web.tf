resource "google_compute_instance" "web1" {
  name                    = var.web1_vm_name
  machine_type            = var.default_vm_size
  zone                    = var.web1_vm_zone
  metadata_startup_script = var.prov_command

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

  allow_stopping_for_update = true

  depends_on = [
    google_compute_instance.dbserver1
  ]

}

resource "google_compute_instance" "web2" {
  name                    = var.web2_vm_name
  machine_type            = var.default_vm_size
  zone                    = var.web2_vm_zone
  metadata_startup_script = var.prov_command

  boot_disk {
    initialize_params {
      image = var.default_vm_image
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.subnet2.self_link

    access_config {

    }
  }

  allow_stopping_for_update = true

  depends_on = [
    google_compute_instance.dbserver1
  ]

}