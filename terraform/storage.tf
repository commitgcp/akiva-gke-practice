resource "google_artifact_registry_repository" "hello-repo" {
  location      = var.region
  project       = var.project_id
  repository_id = "hello-repo"
  description   = "docker repository"
  format        = "DOCKER"
}