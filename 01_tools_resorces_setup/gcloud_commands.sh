
# 💻 Google Cloud CLI Command Log – Week 1

This markdown captures all major `gcloud` commands I used during the initial setup of my GCP environment for the Data Engineering Zoomcamp.

---

## ✅ 1. Install and Initialize the GCloud SDK

```bash
# Download SDK for macOS (Apple Silicon)
curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-darwin-arm.tar.gz

# Unpack the archive
tar -xvzf google-cloud-cli-darwin-arm.tar.gz

# Run the installer
./google-cloud-sdk/install.sh



⸻

✅ 2. Authenticate with Google Cloud

# Authenticate via browser
gcloud auth application-default login

# List all accounts and confirm active
gcloud auth list



⸻

✅ 3. Set Up GCP Project

# Set active project
gcloud config set project <your-project-id>

# Confirm active configuration
gcloud config list



⸻

✅ 4. Enable Required APIs

# IAM API
gcloud services enable iam.googleapis.com

# IAM Credentials API
gcloud services enable iamcredentials.googleapis.com



⸻

✅ 5. Create Service Account and Key (Optional via CLI)

# Create service account
gcloud iam service-accounts create zoomcamp-sa \
  --description="Zoomcamp service account" \
  --display-name="Zoomcamp SA"

# Assign roles (Viewer, Storage Admin, BigQuery Admin)
gcloud projects add-iam-policy-binding <your-project-id> \
  --member="serviceAccount:zoomcamp-sa@<your-project-id>.iam.gserviceaccount.com" \
  --role="roles/viewer"

gcloud projects add-iam-policy-binding <your-project-id> \
  --member="serviceAccount:zoomcamp-sa@<your-project-id>.iam.gserviceaccount.com" \
  --role="roles/storage.admin"

gcloud projects add-iam-policy-binding <your-project-id> \
  --member="serviceAccount:zoomcamp-sa@<your-project-id>.iam.gserviceaccount.com" \
  --role="roles/bigquery.admin"

# Create and download the key
gcloud iam service-accounts keys create ~/keys/dtc-sa-key.json \
  --iam-account=zoomcamp-sa@<your-project-id>.iam.gserviceaccount.com



⸻

✅ 6. Set Environment Variable

# Temporary session (current terminal only)
export GOOGLE_APPLICATION_CREDENTIALS="$HOME/keys/dtc-sa-key.json"

# Persistent (add to shell config like .zshrc)
echo 'export GOOGLE_APPLICATION_CREDENTIALS="$HOME/keys/dtc-sa-key.json"' >> ~/.zshrc
source ~/.zshrc



⸻

🧪 7. Confirm Everything Works

# Check account is authenticated
gcloud auth application-default print-access-token

# Check project is active
gcloud config get-value project



⸻

📚 Resources
	•	Google Cloud SDK Docs
	•	IAM Roles Reference
	•	DataTalksClub Setup Guide

⸻

✍️ Maintained by Bright Olili – June 2025
