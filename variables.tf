variable "project_id" {
    default = "infracost-proj"
}
variable "region" {
  default = "us-central1"
}
variable "zone" {
  default = "us-central1-b"
}
variable "service_account_email" {
    default = "terraform-sa-key@infracost-proj.iam.gserviceaccount.com"
}
variable "gcp_credentials" {
  description = "GCP credentials as a JSON string"
  type        = string
}
