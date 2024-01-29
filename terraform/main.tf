#Set provider
provider "google" {
  project     = var.project_id
  region      = var.region
}

#Enable necessary APIs
resource "google_project_service" "gcp_services" {
  for_each = toset(var.gcp_service_list)
  project = var.project_id
  service = each.key
  disable_on_destroy = false
}

module "github-builder-service-account" {
  source        = "terraform-google-modules/service-accounts/google"
  version       = "~> 4.2.1"
  project_id    = var.project_id
  prefix        = "github"
  names         = ["builder-sa"]
  project_roles = [
    "${var.project_id}=>roles/artifactregistry.reader",
    "${var.project_id}=>roles/artifactregistry.writer",
    "${var.project_id}=>roles/container.admin"
  ]
}