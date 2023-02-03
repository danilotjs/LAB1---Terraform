resource "google_compute_disk" "test-disk" {
  name = "test-disk"
  type = "pd-balanced"
  zone = "us-central1-a"
  size = 30
}
