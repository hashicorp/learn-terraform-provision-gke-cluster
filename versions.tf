terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.52.0"
    }
  backend "gcs" {
    bucket  = "demo_terraform_backend"
    prefix  = "jenkins_pipeline/"
  }
  required_version = ">= 0.14"
}

