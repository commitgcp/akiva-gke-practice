variable "project_id" {
  description = "GCP project ID"
  type = string
}

variable "region" {
  description = "GCP region"
  type = string
}

variable "gcp_service_list" {
  description ="The list of apis necessary for the project"
  type = list(string)
  default = [
    "container.googleapis.com",
    "iap.googleapis.com"
  ]
}

variable "bastion_zone" {
    description = "Zone for bastion VM"
}