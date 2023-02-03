resource "google_compute_instance" "web1" {
  name         = "web1"
  machine_type = "e2-small"
  zone         = "us-east1-c"
  metadata_startup_script = "sudo apt update; sudo apt-get install nginx -y"
  
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
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
  name         = "web2"
  machine_type = "e2-small"
  zone         = "southamerica-east1-c"
  metadata_startup_script = "sudo apt update; sudo apt-get install nginx -y"
  
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
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