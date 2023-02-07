terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"
    }
  }

   backend "gcs" {
    bucket = "terraform-course-state"
    prefix = "prod"
    credentials = "/home/dchaves/Documents/gcp-svc/terraform-course-376522-eda26e3c0237.json"
  }

}

provider "google" {
  credentials = "/home/dchaves/Documents/gcp-svc/terraform-course-376522-eda26e3c0237.json"
  project     = "terraform-course-376522"
  region      = "us-central1"
}