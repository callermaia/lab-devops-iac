terraform {
  required_version = ">= 1.0.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  project = var.gcp_project_id
  region  = var.gcp_region
}

resource "google_storage_bucket" "log_bucket" {
  name          = "bucket-relatorios-devops-cfrmaia-2026"
  location      = var.gcp_region
  force_destroy = true

  uniform_bucket_level_access = true
}
