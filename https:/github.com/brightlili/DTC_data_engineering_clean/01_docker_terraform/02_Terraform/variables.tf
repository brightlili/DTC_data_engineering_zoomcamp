# Service Account Credentials Path
variable "credentials" {
  description = "Path to your GCP service account key file"
  default = "./keys/strategic-creds.json"
  # Fix: Make sure this path is valid and file exists!
  # Good practice: use relative path like "./keys/sa-key.json" if possible
}

# GCP Project ID
variable "project" {
  description = "Your GCP project ID"
  default     = "strategic-goods-461521-p2"
}

# GCP Region
variable "region" {
  description = "GCP region to deploy resources in"
  default     = "us-east5"  # ✅ Columbus, Ohio
}

# Location (used by some services like BigQuery, GCS)
variable "location" {
  description = "Default GCP resource location"
  default     = "us-east5"  # ✅ Should match region format (no uppercase, no zone letter)
}

# BigQuery Dataset Name
variable "bq_dataset_name" {
  description = "BigQuery dataset name to create"
  default     = "dtc_dataset"
}

# GCS Bucket Name
variable "gcs_dtc_bucket_name" {
  description = "Globally unique name for the GCS bucket"
  default     = "terraform-dtc-terra-bucket"
  # Ensure this bucket name is globally unique
}

# Storage Class for the GCS Bucket
variable "gcs_storage_class" {
  description = "GCS bucket storage class"
  default     = "STANDARD"
}