terraform {
  backend "gcs" {
    bucket  = "demo_terraform_backend"
    prefix  = "jenkins_pipeline/"
  } 
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.52.0"
    }
  }
    required_version = ">= 0.14"
}

