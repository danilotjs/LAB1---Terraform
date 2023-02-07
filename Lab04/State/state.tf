resource "google_storage_bucket" "terraform-course-state" {
  name     = "terraform-course-state"
  location = "US-CENTRAL1"

  force_destroy = true

  versioning {
    enabled = true
  }
}