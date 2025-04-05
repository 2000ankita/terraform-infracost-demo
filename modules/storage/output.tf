output "bucket_url" {
  value = "gs://${google_storage_bucket.default.name}"
}
