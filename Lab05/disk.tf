resource "google_compute_disk" "dados" {
  name = "dados"
  type = "pd-ssd"
  zone = local.db_data_zone
  size = var.db_disk_size
}