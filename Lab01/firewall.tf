resource "google_compute_firewall" "allow-icmp-ssh" {
  name    = "allow-icmp-ssh"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_ranges = ["0.0.0.0/0"]
}
