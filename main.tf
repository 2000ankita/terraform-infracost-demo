provider "google" {
  credentials = jsondecode(base64decode(var.gcp_credentials))
  project = var.project_id
  region  = var.region
}

module "compute" {
  source       = "./modules/compute"
  instance_name = "infracost-demo-vm"
  zone          = var.zone
}

module "storage" {
  source       = "./modules/storage"
  bucket_name  = "infracost-demo-bucket"
  location     = var.region
}

resource "google_project_iam_member" "storage_admin" {
  project = var.project_id
  role    = "roles/storage.admin"
  member = "serviceAccount:${var.service_account_email}"

}

resource "google_project_iam_member" "compute_admin" {
  project = var.project_id
  role    = "roles/compute.admin"
  member = "serviceAccount:${var.service_account_email}"

}

